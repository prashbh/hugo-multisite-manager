# Hugo-multisite-manager

Thanks to all the open source maintainers, contributors & the community for sharing their knowledge.

This repo is built on top of Hugo and lets you manage multiple websites from a single Hugo setup.
Each website is added as a git submodule and you can publish those websites using either Github Pages or your own deployment scripts.

I used this answer on hugo forum to build this project https://discourse.gohugo.io/t/hugo-multisite-workflow/103/8

## Instructions

1. **Theme:** After cloning, take a look at `setup.sh` and update the theme if you'd like. Make sure to also change the line that sets the theme in config.toml. 
2. Run `setup.sh`. This will install Hugo if required, and create the `websites` folder which acts as the container for all your websites.
3. You should now see a folder `multisite` which is the base Hugo website.
4. Run `createWebsite.sh <website_name> <repository_url>` to add it as a submodule inside the `multisite\websites` folder. This will create a `content`, `public` and `config.toml` in the child website if they don't already exist.
5. To customize individual website settings, you can edit this `config.toml` in each of the `websites` subfolder.
6. To run your website, run `hugo server` or `hugo` with `--config` option to pass it your own config.
    Example: `hugo server --config=websites/<website_name>/config.toml` or `hugo --config=websites/<website_name>/config.toml`
    The generated website will live in `websites/<website_name>/public` folder which you can then deploy.

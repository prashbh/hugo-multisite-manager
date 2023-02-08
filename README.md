# Hugo-multisite-manager

This repo is built on top of Hugo and lets you manage multiple websites from a single Hugo setup.
Each website is added as a git submodule and you can publish those websites using either Github Pages or your own deployment scripts.

## Instructions

1. **Theme:** After cloning, take a look at `setup.sh` and update the theme if you'd like. Make sure to also change the line that sets the theme in config.toml. 
2. Run `setup.sh`. This will install Hugo if required, and create the `websites` folder which acts as the container for all your websites.
3. You should now see a folder `multisite` which is the base Hugo website.
4.  
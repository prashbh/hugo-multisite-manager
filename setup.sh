if ! command -v hugo &> /dev/null
then
    echo "Installing Hugo..."
    sudo apt install hugo
fi
echo "Hugo is present"
echo "Creating multisite root"
hugo new site multisite
echo "Multisite root created"
echo "Setting theme"
cd multisite
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke themes/ananke
echo "theme = 'ananke'" >> config.toml
echo "Theme installed"

echo "Create container folder \"websites\""
mkdir websites
echo "Finished. Run createWebsite.sh <website> <repo url> to create a new website"
#hugo server --config=config.toml,websites/TheThinkingNobody/config.toml -p 12345
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

#rm -rf content
mkdir websites
#cd websites
#websitesList=( TheThinkingNobody AProgrammersMind )
#for i in "${websitesList[@]}"
#do
#   : 
#   mkdir "$i"
#   touch "$i/config.toml"
#   mkdir "$i/content"
#   mkdir "$i/public"
#done
#echo "Starting server"
#hugo server --config=config.toml,websites/TheThinkingNobody/config.toml -p 12345
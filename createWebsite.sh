#!/bin/usr/env bash

if [ ! "$#" -eq 2 ]
then
    echo "Website name & github repository url required, $# provided"
    return 1
fi

websitesFolderName="websites"
multisiteFolderPath="multisite/$websitesFolderName"
if [ ! -d $multisiteFolderPath ] 
then
    echo "Directory $multisiteFolderPath DOES NOT exists. Run setup.sh first" 
    return 1
fi

git submodule add -b main $2 "$multisiteFolderPath/$1"
git submodule update --init "$multisiteFolderPath/$1"
 
touch "$multisiteFolderPath/$1/config.toml"
mkdir "$multisiteFolderPath/$1/content"
mkdir "$multisiteFolderPath/$1/public"

echo "contentDir = '$websitesFolderName/$1/content'" >> "$multisiteFolderPath/$1/config.toml"
echo "publishDir = '$websitesFolderName/$1/public'" >> "$multisiteFolderPath/$1/config.toml"

echo "Website created in $multisiteFolderPath/$1"
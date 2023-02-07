#!/bin/usr/env bash

if [ ! "$#" -eq 2 ]
then
    echo "Website name & github repository url required, $# provided"
    return 1
fi

multisiteFolderName="multisite/websites"
if [ ! -d $multisiteFolderName ] 
then
    echo "Directory $multisiteFolderName DOES NOT exists. Run setup.sh first" 
    return 1
fi

git submodule add -b main --force $2 "$multisiteFolderName/$1"
git submodule update --init "$multisiteFolderName/$1"
 
touch "$multisiteFolderName/$1/config.toml"
mkdir "$multisiteFolderName/$1/content"
mkdir "$multisiteFolderName/$1/public"

echo "title = '$1'" >> "$multisiteFolderName/$1/config.toml"

echo "contentDir = 'websites/$1/content'" >> "$multisiteFolderName/$1/config.toml"
echo "publishDir = 'websites/$1/public'" >> "$multisiteFolderName/$1/config.toml"


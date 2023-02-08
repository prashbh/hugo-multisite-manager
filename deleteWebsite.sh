#!/bin/usr/env bash

if [ ! "$#" -eq 1 ]
then
    echo "Website name required"
    return 1
fi

websitesFolderName="websites"
multisiteFolderPath="multisite/$websitesFolderName"

git rm "$multisiteFolderPath/$1"
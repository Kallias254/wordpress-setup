#!/bin/bash

# Script to set up a WordPress project with Bedrock and _s theme

# Check if a project name is provided
if [ -z "$1" ]; then
    echo "Please provide a project name."
    exit 1
fi

# Define variables
projectName=$1
projectDir="$HOME/Documents/Projects/$projectName"
bedrockRepo="https://github.com/roots/bedrock.git"
underscoreUrl="http://underscores.me/?name=${projectName}&underscoresme_generate=1"

# Create project directory
mkdir -p "$projectDir"
cd "$projectDir"

# Clone Bedrock and install dependencies
git clone ${bedrockRepo} .
composer install

# Download and add the _s theme
curl -L ${underscoreUrl} -o "${projectName}.zip"
unzip "${projectName}.zip" -d web/app/themes/
rm "${projectName}.zip"

# Initialize a Git repository in the theme directory
cd web/app/themes/$projectName
git init

# Return to the project root and display a success message
cd -
echo "WordPress project setup completed: $projectDir"


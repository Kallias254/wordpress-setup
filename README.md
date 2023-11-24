WordPress Project Setup with Bedrock and _s
This script automates the setup of a WordPress project using Bedrock and the Underscores (_s) theme. It creates a project directory, sets up Bedrock, adds an _s theme, and initializes a Git repository for theme development.

Prerequisites
Git
Composer
curl (for downloading the _s theme)
Local by Flywheel (LbF) for local WordPress development environment
Usage
Running the Script:

Execute the script from anywhere, passing in the desired project name.
Example: ./setup-wp-env.sh my-new-project
Script Actions:

The script creates a new project directory at Documents/Projects/my-new-project.
Clones Bedrock, installs dependencies, and adds an Underscores theme.
Initializes a Git repository within the theme directory.
Post-Script Configuration:

Bedrock .env Configuration:
Navigate to the project directory and rename .env.example to .env.
Update the .env file with the following default database credentials:
arduino
Copy code
DB_NAME='local'
DB_USER='root'
DB_PASSWORD='root'
Set WP_HOME and WP_SITEURL. For example:
bash
Copy code
WP_HOME='http://my-new-project.local'
WP_SITEURL="${WP_HOME}/wp"
Update Nginx Configuration:
Edit the site.conf.hbs file in ~/Local Sites/bedrock/conf/nginx/ to set the correct root:
bash
Copy code
root /full/path/to/bedrock/web;
Replace /full/path/to/bedrock/web with the actual path.
Setting Up Local by Flywheel:

Manually set up the new project in LbF, pointing it to the Bedrock installation.
Access WordPress:

Access the WordPress installation through LbF's provided URL and complete the WordPress setup.
Troubleshooting
If encountering permission issues, ensure the script has executable permissions.
For Bedrock or LbF related issues, refer to their respective documentation and support channels.

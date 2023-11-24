# WordPress Project Setup with Bedrock and _s

This script automates the process of setting up a WordPress project using the Bedrock framework and the Underscores (_s) theme. It is designed to create a project in a specific directory structure, prepare Bedrock, add an _s theme, and initialize a Git repository for development.

## Prerequisites

Before running the script, ensure the following tools are installed on your system:

- Git
- Composer
- curl (for downloading the _s theme)

## Script Usage

To use the script, follow these steps:

1. **Run the Script**:
   - Execute the script from anywhere in the terminal, passing the project name as an argument.
   - Syntax: `./setup-wp-env.sh <project-name>`
   - Example: `./setup-wp-env.sh my-new-project`

2. **Script Actions**:
   - The script will create a new project directory at `Documents/Projects/<project-name>`.
   - It clones the Bedrock repository, installs necessary PHP dependencies, and adds an Underscores theme.
   - A Git repository is initialized within the theme directory for version control.

## Post-Script Steps

After running the script, perform the following steps to complete the setup:

### Bedrock .env Configuration

- Navigate to the project directory.
- Rename `.env.example` to `.env`.
- Update the `.env` file with the default database credentials:
DB_NAME='local'
DB_USER='root'
DB_PASSWORD='root'

- Configure the WordPress environment URLs:
WP_HOME='http://<project-name>.local'
WP_SITEURL="${WP_HOME}/wp"

### Update Nginx Configuration

If using Local by Flywheel, update the Nginx configuration:

- Edit the `site.conf.hbs` file in `~/Local Sites/bedrock/conf/nginx/`.
- Set the correct document root to the Bedrock `web` directory: root /full/path/to/bedrock/web;

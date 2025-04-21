#!/bin/bash
set -e

# Render the site to the temporary directory
quarto render

# Copy the rendered files to the current directory 
# (excluding the source .qmd files and other config files)
cp -r _temp_site/* .

# Remove the temporary directory
rm -rf _temp_site

# Add all files to git
git add .

# Commit the changes
git commit -m "Update website content" || echo "No changes to commit"

# Push to GitHub
git push origin gh-pages

echo "Site has been built and deployed to GitHub Pages!" 
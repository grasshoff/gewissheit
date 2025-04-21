#!/bin/bash

# Simple deploy script - image-free version
echo "Starting image-free deployment process..."

# 1. Make sure we're on the main branch
echo "Ensuring we're on the main branch..."
git checkout main || git checkout -b main

# 2. Build the site
echo "Building the site..."
quarto render

# 3. Create clean gh-pages branch
echo "Setting up clean gh-pages branch..."
git checkout --orphan gh-pages-temp
git reset --hard

# 4. Add .nojekyll file
echo "Adding .nojekyll file to prevent Jekyll processing..."
touch .nojekyll
git add .nojekyll

# 5. Copy built files to root (excluding img directory)
echo "Copying built files to root..."
find _build -type f -not -path "*img*" -exec cp --parents {} . \;
rm -rf _build

# 6. Add all files
echo "Adding files to git..."
git add *.html
git add site_libs
git add search.json
git add styles.css
git add .nojekyll

# 7. Create commit
echo "Creating commit..."
git commit -m "Deploy website to GitHub Pages"

# 8. Push to GitHub
echo "Pushing to GitHub..."
git push -f origin gh-pages-temp:gh-pages

# 9. Return to main branch
echo "Returning to main branch..."
git checkout main

echo "Deployment complete!"
echo ""
echo "Your site should now be available at: https://grasshoff.github.io/gewissheit/"
echo ""
echo "GitHub Pages may take a few minutes to update." 
#!/bin/bash

# Script to clean up the directory structure and keep only files needed for Quarto website generation

echo "Starting directory cleanup..."

# Remove shell scripts (except this one)
echo "Removing shell scripts..."
find . -name "*.sh" ! -name "cleanup_dir.sh" -type f -delete

# Remove Typst-related files
echo "Removing Typst-related files..."
rm -f _typst.typ main.typ
rm -f clean_typst.py
rm -rf typst_output/

# Print what files are kept
echo ""
echo "Kept files essential for Quarto website generation:"
echo "- _quarto.yml (configuration)"
echo "- *.qmd files (content)"
echo "- references.bib (bibliography)"
echo "- styles.css (styling)"
echo "- img/ directory (images)"
echo "- site_libs/ directory (libraries)"

echo ""
echo "Cleanup complete!" 
---
title: ICOtronic Documentation
author: MyTooliT
github-repo: MyTooliT/Documentation
description: "Documentation for the ICOTronic system: https://www.mytoolit.com/ICOtronic"
---

# Documentation

This repository collects various documentation for the [ICOtronic system](https://www.mytoolit.com/ICOtronic).

# Download

You can access this repository and its submodules using the following command:

```sh
git clone --recursive git@github.com:MyTooliT/Documentation.git
```

# Build

You can use [bookdown](http://bookdown.org) to generate

- HTML,
- [EPUB](https://en.m.wikipedia.org/wiki/EPUB), and
- PDF

versions of this documentation. To do that please use the following commands:

```sh
# Work around non-accessible images for PDF and EPUB output
cp -r Protocol/Figures Figures

# Generate (GitBook) HTML document
Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::gitbook')"
# Rename HTML output directory
mv Bookdown HTML
# Copy images into HTML directory
cp -r Protocol/Figures HTML
# Put HTML output into subdirectory of original output directory
mkdir Bookdown
mv HTML Bookdown

# Generate PDF document
Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::pdf_book')"

# Generate EBook
Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::epub_book')"

# Remove copied images
rm -r Figures
# Remove unnecessary reference key file
rm Bookdown/reference-keys.txt
```

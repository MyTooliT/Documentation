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

versions of this documentation. To do that please use the following [make](https://en.m.wikipedia.org/wiki/Makefile) commands:

```sh
# Generate HTML documentation
make html

# Generate PDF
make pdf

# Generate EPUB document
make epub
```

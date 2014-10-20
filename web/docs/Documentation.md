# Styleo Admin - Responsive Admin Theme

## Overview

This document aims to explain the best way to work with the product and its components.

## Getting started

- Do not start from scratch - use an existing asset instead and modify it to learn how it works.
- Use Firefox or Chrome Developer Tools to find bugs on your website and inspect HTML structure and CSS styles.
- If you see error messages showing up in your browser's console you can try a google search for a quick fix - most likely someone has already had similar problem.

## Project Structure

This project's files are organized in the following folders structure:

```
- bower_components/
- css/
- docs/
- images/
- js/
- sass/
- bower.json
- *.html
```

## Bower

Bower is a front-end package manager. It makes easy to organize and maintain vendor plugins and external libraries.

This project includes `bower.json` file in the main directory which lists all required front-end dependencies.

- To install Bower itself, you have to install **node.js** and **npm** first - go to [nodejs.org](http://nodejs.org/) for instructions.
- Open a terminal and run the command `npm install -g bower`. This command will install Bower globally on your computer.
- Go to the project's main directory in a terminal and run `bower install` to install all front-end dependencies into the `bower_components/` directory.

Visit official [Bower](http://bower.io/) site for details.

## Sass & Autoprefixer

Basically you have two ways to work with CSS regarding this project:

1. Load `css/style-admin.css` file in the HTML files and overwrite existing CSS rules in your own stylesheets (recommended), or
2. Work directly inside `sass/` directory compiling Sass by yourself.

This project has been built with [Sass](http://sass-lang.com/) (more precisely [node-sass](https://github.com/sass/node-sass), much faster version of Sass) and [Autoprefixer](https://github.com/postcss/autoprefixer). Go to the these projects' websites for instructions if you choose the second option.
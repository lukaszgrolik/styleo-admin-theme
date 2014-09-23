# How to create new page?

The easiest way to create new page is to copy content of `blank.html` file from main directory and then inserting custom content directly into `<div id="page-wrapper">` element.

# How to work with Sass?

The easiest way to work with Sass when modifying this theme is to use [http://gulpjs.com/](Gulp) which is already configured to compile SCSS files to CSS, setting a simple development server and even live-reloading assets & injecting styles (see `gulpfile.js` in the main directory). You can also use plain old Sass command-line tool if you want.

# What is `sb-admin-2` directory used for?

*Styleo Admin Theme* is based on [http://startbootstrap.com/template-overviews/sb-admin-2/](sb-admin-2) so that basic bootstrap admin structure and functionality provided by *sb-admin-2* can be separated from the layer of unique flat design and extended functionality provided by *Styleo Admin Theme*.
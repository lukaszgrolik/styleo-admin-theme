var gulp = require('gulp');
var gp = require('gulp-load-plugins')();
var swigExtras = require('swig-extras');
var swigLocals = require('./gulp-swig-locals');

var config = {
  name: 'styleo-admin',
  paths: {
    web: 'web',
    src: 'src',
  }
};

function templatesTask(options) {
  return gulp.src(config.paths.src + '/templates/pages/**/*.swig')
  .pipe(gp.plumber())
  .pipe(gp.swig({
    setup: function(swig) {
      swigExtras.useFilter(swig, 'trim');
    },
    defaults: {
      cache: false,
      locals: {
        getRouteBySlug: swigLocals.getRouteBySlug,
        getBreadcrumbsRoutes: swigLocals.getBreadcrumbsRoutes,
        includeGA: options.ga
      }
    }
  }))
  .pipe(gulp.dest(options.dest));
}

//

gulp.task('connect', function() {
  gp.connect.server({
    root: config.paths.web,
    port: 3020,
    livereload: true
  });
});

gulp.task('markdown', function() {
  return gulp.src('web/docs/*.md')
  .pipe(gp.markdown())
  .pipe(gulp.dest('web/docs'))
})

gulp.task('templates', function() {
  return templatesTask({
    dest: 'web'
  });
});

gulp.task('prettifyHtml', ['templates'], function() {
  return gulp.src('web/*.html')
  .pipe(gp.prettify({
    indent_size: 2
  }))
  .pipe(gulp.dest('web/'))
});

gulp.task('sass', function() {
  return gulp.src(config.paths.src + '/sass/main.scss')
  .pipe(gp.plumber())
  .pipe(gp.sass())
  .pipe(gp.autoprefixer({
    browsers: ['> 0.5%']
  }))
  .pipe(gp.rename({
    basename: config.name
  }))
  .pipe(gulp.dest('web/css'))
  .pipe(gp.size({
    showFiles: true
  }))
  .pipe(gp.minifyCss())
  .pipe(gp.rename({
    basename: config.name + '.min'
  }))
  .pipe(gulp.dest('web/css'))
  .pipe(gp.size({
    showFiles: true
  }))
  .pipe(gp.connect.reload());
});

gulp.task('copyBower', function() {
  return gulp.src('bower.json')
  .pipe(gulp.dest('web'));
});

gulp.task('watch', function() {
  gulp.watch('web/docs/*.md', ['markdown']);
  gulp.watch([config.paths.src + '/templates/**/*.swig', 'web/docs/*.html'], ['templates', 'prettifyHtml']);
  gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass']);
  gulp.watch('bower.json', ['copyBower']);
});

gulp.task('build', ['markdown', 'templates', 'prettifyHtml', 'sass', 'copyBower']);
gulp.task('server', ['connect', 'build', 'watch']);
gulp.task('default', ['server']);

gulp.task('copyWeb', function(){
  return gulp.src('web/**/*.*')
  .pipe(gulp.dest('webDemo'));
});

gulp.task('templatesDemo', ['copyWeb'], function() {
  return templatesTask({
    dest: 'webDemo',
    ga: true
  });
});

gulp.task('buildDemo', ['copyWeb', 'templatesDemo']);
var gulp = require('gulp');
var plugins = require('gulp-load-plugins')();
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
  .pipe(plugins.plumber())
  .pipe(plugins.swig({
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
  plugins.connect.server({
    root: config.paths.web,
    port: 3020,
    livereload: true
  });
});

gulp.task('markdown', function() {
  return gulp.src('web/README.md')
  .pipe(plugins.markdown())
  .pipe(gulp.dest('web'))
})

gulp.task('templates', function() {
  return templatesTask({
    dest: 'web'
  });
});

gulp.task('sass', function() {
  return gulp.src(config.paths.src + '/sass/main.scss')
  .pipe(plugins.plumber())
  .pipe(plugins.sass())
  .pipe(plugins.autoprefixer({
    browsers: ['> 0.5%']
  }))
  .pipe(plugins.rename({
    basename: config.name
  }))
  .pipe(gulp.dest('web/css'))
  .pipe(plugins.size({
    showFiles: true
  }))
  .pipe(plugins.minifyCss())
  .pipe(plugins.rename({
    basename: config.name + '.min'
  }))
  .pipe(gulp.dest('web/css'))
  .pipe(plugins.size({
    showFiles: true
  }))
  .pipe(plugins.connect.reload());
});

gulp.task('watch', function() {
  gulp.watch('web/README.md', ['markdown']);
  gulp.watch([config.paths.src + '/templates/**/*.swig', 'web/README.html'], ['templates']);
  gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass']);
});

gulp.task('build', ['markdown', 'templates', 'sass',]);
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
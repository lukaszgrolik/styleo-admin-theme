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

gulp.task('connect', function() {
  plugins.connect.server({
    root: config.paths.web,
    port: 3020,
    livereload: true
  });
});

gulp.task('markdown', function() {
  return gulp.src('README.md')
  .pipe(plugins.markdown())
  .pipe(gulp.dest('./'))
})

gulp.task('templates', function() {
  return gulp.src(config.paths.src + '/templates/pages/**/*.swig')
  .pipe(plugins.plumber())
  .pipe(plugins.swig({
    setup: function(swig) {
      swigExtras.useFilter(swig, 'trim');
    },
    defaults: {
      cache: false,
      locals: swigLocals
    }
  }))
  .pipe(gulp.dest(config.paths.web));
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
  .pipe(gulp.dest(config.paths.web + '/css'))
  .pipe(plugins.size({
    showFiles: true
  }))
  .pipe(plugins.minifyCss())
  .pipe(plugins.rename({
    basename: config.name + '.min'
  }))
  .pipe(gulp.dest(config.paths.web + '/css'))
  .pipe(plugins.size({
    showFiles: true
  }))
  .pipe(plugins.connect.reload());
});

gulp.task('watch', function() {
  gulp.watch('README.md', ['markdown']);
  gulp.watch([config.paths.src + '/templates/**/*.swig', 'README.html'], ['templates']);
  gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass']);
});

gulp.task('build', ['markdown', 'templates', 'sass',]);
gulp.task('server', ['connect', 'build', 'watch']);
gulp.task('default', ['server']);
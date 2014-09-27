var gulp = require('gulp');
var watch = require('gulp-watch')
var plugins = require('gulp-load-plugins')();

var config = {
	name: 'styleo-admin',
	paths: {
		web: 'web',
		src: 'src',
	}
};

//

gulp.task('connect', function() {
	plugins.connect.server({
		root: config.paths.web,
		port: 3020,
		livereload: true
	});
});

//

gulp.task('livereload', function() {
	// gulp.src(config.paths.web + '/**/*.{html,js}')
	gulp.src(config.paths.web + '/*.html')
	.pipe(plugins.plumber())
	.pipe(plugins.connect.reload());
});

//

gulp.task('templates', function() {
	gulp.src(config.paths.src + '/templates/pages/**/*.swig')
	.pipe(plugins.plumber())
	.pipe(plugins.swig({
		defaults: {
			cache: false
		}
	}))
	.pipe(gulp.dest(config.paths.web))
});

//

gulp.task('sass', function() {
	gulp.src(config.paths.src + '/sass/main.scss')
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
	.pipe(plugins.connect.reload())
});

//

gulp.task('watchTemplates', function() {
	gulp.watch(config.paths.src + '/templates/**/*.swig', ['templates']);
});

gulp.task('watchSass', function() {
	gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass']);
});

gulp.task('watchWeb', function() {
	gulp.watch(config.paths.web + '/*.html', ['livereload'])
});

//

gulp.task('default', [
	'connect',
	'templates',
	'sass',
	'watchTemplates',
	'watchSass',
	'watchWeb'
]);
var gulp = require('gulp');
var watch = require('gulp-watch')

var plugins = require('gulp-load-plugins')();

var config = {
	name: 'styleo-admin',
	paths: {
		web: '.',
		src: '.',
	}
};

gulp.task('connect', function() {
	plugins.connect.server({
		root: config.paths.web,
		port: 3020,
		livereload: true
	});
});

gulp.task('livereload', function() {
	// gulp.src(config.paths.web + '/**/*.{html,js}')
	gulp.src(config.paths.web + '/*.html')
	.pipe(plugins.connect.reload());
});

//
//
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
	.pipe(plugins.connect.reload());
});

//
//
//

// gulp.task('compressCss', function() {
// 	gulp.src(config.paths.web + '/css/' + config.name + '.css')
// 	.pipe(plugins.minifyCss())
// 	.pipe(plugins.rename({
// 		// suffix: '.min'
// 		basename: 'asfas'
// 	}))
// 	.pipe(gulp.dest(config.paths.web + '/css'))
// 	.pipe(plugins.connect.reload())
// });

//
//
//

gulp.task('watchSass', function() {
	// gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass', 'compressCss']);
	gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass']);
});

gulp.task('watchWeb', function() {
	// gulp.watch(config.paths.web + '/**/*.{html,js}', ['livereload'])
	gulp.watch(config.paths.web + '/*.html', ['livereload'])
});

//
//
//

gulp.task('default', [
	'connect',
	'sass',
	// 'compressCss',
	'watchSass',
	'watchWeb'
]);
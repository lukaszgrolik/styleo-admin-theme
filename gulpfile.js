var gulp = require('gulp');
var watch = require('gulp-watch')

var plugins = require('gulp-load-plugins')();

var config = {
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
	gulp.src(config.paths.src + '/sass/**/*.scss')
	.pipe(plugins.plumber())
	.pipe(plugins.sass())
	.pipe(plugins.autoprefixer({
		browsers: ['> 0.5%']
	}))
	.pipe(gulp.dest(config.paths.web + '/css'));
});

// Browserify task
gulp.task('browserify', function() {
	// Single point of entry (make sure not to src ALL your files, browserify will figure it out for you)
	gulp.src(config.paths.src + '/js/main.js')
	.pipe(plugins.browserify({
	insertGlobals: true,
	debug: true
	}))
	// Bundle to a single file
	.pipe(plugins.concat('main.js'))
	// Output it to our dist folder
	.pipe(gulp.dest(config.paths.web + '/js'));
});

//
//
//

gulp.task('compressCss', function() {
	gulp.src(config.paths.web + '/css/main.css')
	.pipe(plugins.minifyCss())
	.pipe(plugins.rename('main.min.css'))
	.pipe(gulp.dest(config.paths.web + '/css'))
	.pipe(plugins.connect.reload())
});

gulp.task('compressJs', function() {
	gulp.src(config.paths.web + '/js/main.js')
	.pipe(plugins.uglify())
	.pipe(plugins.rename('main.min.js'))
	.pipe(gulp.dest(config.paths.web + '/js'))
});

//
//
//

gulp.task('watchSass', function() {
	gulp.watch(config.paths.src + '/sass/**/*.scss', ['sass', 'compressCss']);
});

gulp.task('watchSrcJs', function() {
	// Watch our scripts
	gulp.watch(config.paths.src + '/js/**/*.js', ['browserify', 'compressJs']);
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
	// 'browserify',
	'compressCss',
	// 'compressJs',
	'watchSass',
	// 'watchSrcJs',
	'watchWeb'
]);
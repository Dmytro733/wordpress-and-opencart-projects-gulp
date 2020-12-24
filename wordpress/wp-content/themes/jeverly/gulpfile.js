const gulp = require ('gulp');
const sass = require ('gulp-sass');
const rename = require ('gulp-rename');
const minifyCCS = require('gulp-minify-css');
const concat = require ('gulp-concat');
const del = require ('del');
const browserSync = require('browser-sync').create();


function cssFile(){
return gulp.src('./src/css/sass/all.sass')
        .pipe(sass())
        .pipe(gulp.dest('./src/css'))
        .pipe(minifyCCS())
        .pipe(rename("style.min.css"))
        .pipe(gulp.dest('./build/css'))
        .pipe(browserSync.stream());
}

function jsFile(){
return gulp.src('./src/js/*.js')
        .pipe(concat('allJs.js'))
        .pipe(gulp.dest('./build/js'))
        .pipe(browserSync.stream());
}


function imgFile(){
return gulp.src(['./src/img/*.jpg', './src/img/*.svg', './src/img/*.gif',
        './src/img/*.png'])
        .pipe(gulp.dest('./build/images'))
        .pipe(browserSync.stream());
}

gulp.task('clean', function(){
        return del(['./build/*']);
});


function watch (){
        browserSync.init({
                proxy: "wordpress"
        });

        gulp.watch('./src/css/sass/**/*.sass', cssFile);
        gulp.watch('./src/js/*.js', jsFile);
        gulp.watch(['./src/img/*.jpg', './src/img/*.svg', './src/img/*.gif',
        './src/img/*.png'], imgFile);
        gulp.watch('./**/*.php').on('change', browserSync.reload);
}

gulp.task('sass', cssFile);
gulp.task('scripts' , jsFile);
gulp.task('images', imgFile);
gulp.task('watch', watch);
gulp.task('build', gulp.series('clean', gulp.parallel('sass', 'scripts', 'images')));
gulp.task('dev', gulp.series('build', 'watch'));




var gulp = require('gulp');
var sass = require('gulp-sass')(require('node-sass'));
var sourcemaps = require('gulp-sourcemaps');
var replace = require('gulp-replace');
var autoprefixer = require('gulp-autoprefixer');
var responsive = require('gulp-responsive');
var del = require('del');

const IMAGE_SRC_FOLDER = 'img_souriya/';
const IMAGE_DEST_FOLDER = '../../../img/souriya/';

gulp.task('sass', function () {
  return gulp.src('css/theme.scss')
    .pipe(sourcemaps.init())
    .pipe(sass({ outputStyle: 'compressed' }).on('error', sass.logError))
    .pipe(autoprefixer({
      // browsers: ['last 2 versions'],
      cascade: false
    }))
    .pipe(sourcemaps.write('./maps'))
    .pipe(replace("~material-design-icons/iconfont/", "../css/"))
    .pipe(gulp.dest('../assets/css'));
})

gulp.task('move-img', function () {
  return gulp.src('img/**/*')
    .pipe(gulp.dest('../assets/img/'));
});

gulp.task('watch', function () {
  gulp.watch('css/**/*.scss', gulp.series('sass', 'move-img'))
});

gulp.task('souriya-clean-folder-img', async function() {
  del([`${IMAGE_DEST_FOLDER}/**/*`], { force: true })
});

// in "souriya-img"
gulp.task('souriya-img-jpg', function () {
  return gulp
    .src(`${IMAGE_SRC_FOLDER}/**/*.jpg`)
    .pipe(
      responsive(
        {
          '*.jpg': [
            {
              width: 576,
              rename: {
                suffix: '-sm-576px',
                extname: '.jpg'
              },
              withoutEnlargement: true
            },
            {
              width: 768,
              rename: {
                suffix: '-md-768px',
                extname: '.jpg'
              },
              withoutEnlargement: true
            },
            {
              width: 992,
              rename: {
                suffix: '-lg-992px',
                extname: '.jpg'
              },
              withoutEnlargement: true
            },
            {
              width: 1200,
              rename: {
                suffix: '-xl-1200px',
                extname: '.jpg'
              },
              // Do not enlarge the output image if the input image are already less than the required dimensions.
              withoutEnlargement: true
            },
          ]
        },
        {
          // Global configuration for all images
          // The output quality for JPEG, jpg and TIFF output formats
          quality: 80,
          // Use progressive (interlace) scan for JPEG and PNG output
          progressive: true,
          // Strip all metadata
          withMetadata: false,
          // Do not emit the error when image is enlarged.
          errorOnEnlargement: false
        }
    )
  )
  .pipe(gulp.dest(IMAGE_DEST_FOLDER))
})

// in "souriya-img"
gulp.task('souriya-imgsmall-png', function () {
  return gulp
  .src(`${IMAGE_SRC_FOLDER}/**/*.png`)
    .pipe(
      responsive(
        {
          '*.png': [
            {
              width: 390,
              rename: {
                suffix: '-xs-390px',
                extname: '.png'
              },
              withoutEnlargement: true
            },
            {
              width: 576,
              rename: {
                suffix: '-sm-576px',
                extname: '.png'
              },
              withoutEnlargement: true
            },
            {
              width: 768,
              rename: {
                suffix: '-md-768px',
                extname: '.png'
              },
              withoutEnlargement: true
            },
          ]
        },
        {
          // Global configuration for all images
          // The output quality for JPEG, jpg and TIFF output formats
          quality: 80,
          // Use progressive (interlace) scan for JPEG and PNG output
          progressive: true,
          // Strip all metadata
          withMetadata: false,
          // Do not emit the error when image is enlarged.
          errorOnEnlargement: false
        }
    )
  )
  .pipe(gulp.dest(IMAGE_DEST_FOLDER))
})

// in "souriya-img"
gulp.task('souriya-img-noresponsive', function () {
  return gulp.src('img_souriya-noresponsive/**/*')
    .pipe(gulp.dest(IMAGE_DEST_FOLDER));
});

// main task
gulp.task(
  'souriya-img', 
  gulp.series('souriya-img-jpg', 'souriya-imgsmall-png', 'souriya-img-noresponsive')
);

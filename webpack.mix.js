const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
   .sass('resources/sass/app.scss', 'public/css')
   .sass('resources/assets/css/style.scss', 'public/css')
        .options({
            postCss: [
                require('autoprefixer')({
                    browsers: [
                        'last 15 versions',
                        'last 6 iOS versions',
                        'last 6 Android versions',
                        'last 6 Safari versions',
                        'last 2 ie versions'
                    ],
                    grid: true
                })
            ]
        });

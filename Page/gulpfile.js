var gulp = require('gulp');
var print = require('gulp-print');

var Hexo = require('hexo');
var hexo = new Hexo(process.cwd(), {});

var rulesdir = '../Rules/*';

gulp.task('copy-rules', function(){
    var rulefiles = [rulesdir + "*.md", rulesdir + "images/*"];
    
    return gulp.src(rulefiles)
               .pipe(print(function(filepath) {
                    return "Copied: " + filepath;
                }))
               .pipe(gulp.dest('source/Rules/'));
});

gulp.task('copy-rules:watch', function(){
    gulp.watch(rulesdir, ['copy-rules']);
});

gulp.task('build', ['copy-rules'], function(){
    hexo.init().then(function(){
        return hexo.call('generate', {});
    }).catch(function(err){
    	console.log(err);
    });
});

gulp.task('serve', ['copy-rules:watch'], function(){
    hexo.init().then(function(){
        return hexo.call('server', {watch: true});
    }).catch(function(err){
    	console.log(err);
    });
});
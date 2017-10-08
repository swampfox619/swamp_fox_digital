// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).on("turbolinks:load", function(){

        $('.services').css({
            opacity    : 0,
            transform  : 'scale(.8)',
        });
    

        $(window).scroll(function(){
            var hT = $('.services').offset().top,
                hH = $('.services').outerHeight(),
                wH = $(window).height(),
                wS = $(this).scrollTop();
            if (wS > (hT+hH-wH)){
                $('.services').css({
                    opacity    : 1,
                    transform  : 'scale(1)',
                    transition : 'opacity 1s, transform 1s'
                });
            };
        });
})
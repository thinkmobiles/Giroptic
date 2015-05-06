/**
 * Created by German on 21.04.2015.
 */
$(document).ready(function () {
    $(document).scroll(function () {
        var heightHead = $("#header").height();
        var posTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;

        if (posTop > heightHead - 25) {
            $('#scroll-header').css({top: 0});
            $('#scroll-header').removeClass('fast');
        } else {
            $('#scroll-header').css({top: -40});
            $('#scroll-header').addClass('fast');
        }
    });

    smooth(300, 12000);

    $('.second .menu > li >a').hover(function (e) {
        $('.second').addClass('open');
        $('#header').height(260);
        $('.second .navigation').find('.active').removeClass('active');
        e.currentTarget.className = 'active';

        $(e.target).parent('li').find('ul').addClass('active');


        $('.second .sub-menu').stop().animate({height: 220}, 500);
    }, function () {

    });

    $('#header').hover(function () {

    }, function () {

        $('.second .sub-menu').stop().animate({height: 0}, 500, function () {
            $('#header').height(120);
            $('.second').removeClass('open');
            $('.second .navigation').find('.active').removeClass('active');
        });

    });

    function smooth(orientation, time) {
        var start = $('#slider img').css('right');
        $('#slider img').stop().animate({
            right: '+=' + orientation
        }, time, "linear", function () {

            $('#slider img').stop().animate({
                right: '-=' + orientation
            }, time, "linear", function () {
                smooth(orientation, time);
            });
        });

    }
});
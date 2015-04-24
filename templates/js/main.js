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

    smooth(500, 10000);

    $('.second .navigation a').click(function (e) {
        $('.second .navigation').find('.active').removeClass('active');
        e.currentTarget.className = 'active';
        $('#header').height(260);
        $('.second').addClass('open');
        $('.second .popup-menu').animate({height: 220}, 500);

        var index = $(".second .navigation a").index(this);

        switch (index) {
            case 0:
                (function () {
                    $('.popup-menu').find('.active').removeClass('active');
                    $('.popup-menu .popup-menu-group').eq(index).addClass('active');
                })();
                break;
            case 1:
                (function () {
                    $('.popup-menu').find('.active').removeClass('active');
                    $('.popup-menu .popup-menu-group').eq(index).addClass('active');
                })();
                break;
            case 2:
                (function () {
                    $('.popup-menu').find('.active').removeClass('active');
                    $('.popup-menu .popup-menu-group').eq(index).addClass('active');
                })();
                break;
        }

    });

    $('#header').hover(function () {
    }, function () {
        $('.second .popup-menu').animate({height: 0}, 500, function () {
            $('#header').height(120);
            $('.second').removeClass('open');
            $('.second .navigation').find('.active').removeClass('active');
        });
    });

    function smooth(orientation, time) {
        var start = $('#slider img').css('right');
        $('#slider img').animate({right: orientation}, time, function() {
            $('#slider img').animate({right: start}, time, function() {
                smooth(orientation, time);
            });
        });

    }
});
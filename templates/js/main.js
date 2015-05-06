$(document).ready(function () {

    smooth();

    $(document).mousemove(function(e){
        var Y = e.pageY;
        if (Y >= 260 && $('.second .sub-menu').height() == 220) {
            $('.second .sub-menu').stop().animate({height: 0}, 500, function () {
                $('#header').height(120);
                $('.second').removeClass('open');
                $('.second .navigation').find('.active').removeClass('active');
            });
        }
    });

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

    $('.second .menu > li >a').hover(function (e) {
        $('.second').addClass('open');
        $('#header').height(260);
        $('.second .navigation').find('.active').removeClass('active');
        e.currentTarget.className = 'active';
        $(e.target).parent('li').find('ul').addClass('active');
        if ($('.second .sub-menu').height() != 220) {
            $('.second .sub-menu').stop().animate({height: 220}, 500);
        }
    });

    function smooth() {
        var width = $('#slider').width();
        $('#slider img').stop().animate({
            left: 50
        }, width * 25, "linear", function () {
            $('#slider img').stop().animate({
                left: width - 450
            }, width * 25, "linear", function () {
                smooth();
            });
        });
    }
});
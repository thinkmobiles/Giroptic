$(document).ready(function () {
    var lastTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;
    var nextTop = 0;
    var scrolling;
    var spec = $('.slider-menu').eq(0).offset().top;
    var heightHead = $("#header").height();

    if ($('body').hasClass('customize-support')) {
        var top = -8;
    } else {
        var top = -40;
    }

    $(document).click(function (e) {
        if (!$(e.target).parents('.popup').length) {
            $('.popup').removeClass('open');
        }
    });

    $(document).mousemove(function (e) {
        var Y = e.pageY;
        if ((Y >= 260 && $('.second .sub-menu').height() == 220) || (Y <= 40)) {
            $('.second .sub-menu').stop().animate({height: 0}, 500, function () {
                $('#header').height(120);
                $('.second').removeClass('open');
                $('.second .navigation').find('.active').removeClass('active');
            });
        }
    });

    $(document).on('mousewheel', function (e) {
        var delta = e.originalEvent.wheelDelta * -1
            || e.originalEvent.detail;

        if (scrolling) {
            e.preventDefault();
            return;
        } else {
            if (delta > 0 && lastTop >= 0 && lastTop + delta < spec) {
                e.preventDefault();
                scrolling = true;
                $('#slider').stop().animate({opacity: 0}, 500);
                $('body').stop().animate({scrollTop: spec}, 500, function () {
                    scrolling = false;
                    lastTop = nextTop;
                });
            } else {
                nextTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;
                if (delta < 0 && nextTop <= spec) {
                    e.preventDefault();
                    scrolling = true;
                    $('#slider').stop().animate({opacity: 1}, 500);
                    $('body').stop().animate({scrollTop: 0}, 500, function () {
                        scrolling = false;
                        lastTop = nextTop;
                    });
                }
            }
        }
    });

    $(document).scroll(function (e) {
        $('.popup').removeClass('open');

        nextTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;

        if (!scrolling) {
            if (nextTop < spec) {
                $('#slider').stop().animate({opacity: 1}, 500);
            } else {
                $('#slider').stop().animate({opacity: 0}, 500);
            }
        }

        if (nextTop > heightHead - 25) {
            $('#scroll-header').css({top: top + 40});
            $('#scroll-header').removeClass('fast');
        } else {
            $('#scroll-header').css({top: top});
            $('#scroll-header').addClass('fast');
        }
    });

    $('#header .popup').click(function () {
        if ($('#header').find('.popup').hasClass('open')) {
            $('#header').find('.popup').removeClass('open');
        } else {
            $('#header').find('.popup').addClass('open');
        }
    });

    $('#scroll-header').find('.popup').click(function () {
        if ($('#scroll-header').find('.popup').hasClass('open')) {
            $('#scroll-header').find('.popup').removeClass('open');
        } else {
            $('#scroll-header').find('.popup').addClass('open');
        }
    });

    $('.second .menu > li >a').hover(function (e) {
        $('.second').addClass('open');
        $('#header').height(260);
        $('.second .navigation').find('.active').removeClass('active');
        e.currentTarget.className = e.currentTarget.className + ' active';
        $(e.target).parent('li').find('ul').addClass('active');
        if ($('.second .sub-menu').height() != 220) {
            $('.second .sub-menu').stop().animate({height: 220}, 500);
        }
    });

    $('.login').click(function () {
        $('.login-block').css('display', 'block');
        $(".login-area input[type='email']").val('');
        $(".login-area input[type='password']").val('');
        $(".login-area input[type='email']").focus();
    });

    $('.login-wrapper').click(function () {
        $('.login-block').css('display', 'none');
    });

    $('#search,.search').click(function () {
        $('.search-block').css('display', 'block');
        $('.search-area input[type=text]').val('');
        $('.search-area input[type=text]').focus();
    });

    $('.search-wrapper').click(function () {
        $('.search-block').css('display', 'none');
    });

});
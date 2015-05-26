$(document).ready(function () {
    var lastTop = 0;
    var nextTop = 0;
    var scrolling;
    var spec = $('.slider-menu').eq(0).offset().top;

    if ($('body').hasClass('customize-support')) {
        var top = -8;
    } else {
        var top = -40;
    }

    smooth();

    $(window).resize(function () {
        smooth();
    });

    $(document).click(function (e) {
        if (!$(e.target).parents('.popup').length) {
            $('.popup').removeClass('open');
        }
    });

    $(document).mousemove(function (e) {
        var Y = e.pageY;
        if (Y >= 260 && $('.second .sub-menu').height() == 220) {
            $('.second .sub-menu').stop().animate({height: 0}, 500, function () {
                $('#header').height(120);
                $('.second').removeClass('open');
                $('.second .navigation').find('.active').removeClass('active');
            });
        }
    });

    $(document).scroll(function (e) {
        $('.popup').removeClass('open');
        var heightHead = $("#header").height();
        nextTop = (window.pageYOffset !== undefined) ? window.pageYOffset : (document.documentElement || document.body.parentNode || document.body).scrollTop;

        if (nextTop > heightHead - 25) {
            $('#scroll-header').css({top: top + 40});
            $('#scroll-header').removeClass('fast');
        } else {
            $('#scroll-header').css({top: top});
            $('#scroll-header').addClass('fast');
        }

        if (scrolling) {
            e.preventDefault();
            e.stopPropagation();
        }
        if (nextTop >= 0 && nextTop <= spec && !scrolling) {

            if (nextTop >= lastTop) {
                if (nextTop < spec) {
                    scrolling = true;
                    $('#slider').animate({opacity:0}, 500);
                    $('body').animate({scrollTop: spec}, 500, function() {
                        scrolling = false;
                        lastTop = nextTop;
                    });
                }
            } else {
                if (nextTop < spec) {
                    scrolling = true;
                    $('#slider').animate({opacity:1}, 500);
                    $('body').animate({scrollTop: 0}, 500, function() {
                        scrolling = false;
                        lastTop = nextTop;
                    });
                }
            }
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

    function smooth() {
        $('#slider img').stop();
        if ($(window).width() > 768) {
            $('#slider').find('img').css({
                left: $(window).width() - $('#slider').find('img').width() - 50
            });
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
        } else {
            $('#slider').find('img').css({
                left: ($(window).width() - 300) / 2
            });
        }
    }
});
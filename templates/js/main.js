/**
 * Created by German on 21.04.2015.
 */
$(document).ready(function () {
    $('.second .navigation a').click(function(e) {
        $('.second .navigation').find('.active').removeClass('active');
        e.currentTarget.className = 'active';
        $('.second').addClass('open');
        $('.second .popup-menu').animate({height: 220}, 500);
    });

    $('.second').hover(function () {
    }, function () {
        $('.second .popup-menu').animate({height: 0}, 500, function() {
            $('.second').removeClass('open');
            $('.second .navigation').find('.active').removeClass('active');
        });
    });
});
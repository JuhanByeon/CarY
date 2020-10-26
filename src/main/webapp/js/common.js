$(function () {
    //m-menu-btn
    $('.menu-toggle-btn').click(function () {
        $('.menu').stop().slideToggle('fast');
    })


    //board
    $('.board .btn li').first().addClass('on');
    $('.bWrap > div').first().fadeIn(0);

    $('.board .btn li a').click(function () {
        $('.board .btn li').removeClass('on');
        $(this).parent().addClass('on');

        var i = $(this).parent().index();

        $('.bWrap > div').fadeOut(0);
        $('.bWrap > div').eq(i).fadeIn(0);
    });
});

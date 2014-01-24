$(function(){
    $.stellar({
        horizontalScrolling: false,
        parallaxBackgrounds: true
    });

});
$(document).ready(function(){
    $('#seriestabs > div').hide();
    $('#seriestabs > div:first').show();
    $('#seriestabs ul li:first').addClass('active');

    $('#seriestabs ul li a').click(function(){
        $('#seriestabs ul li').removeClass('active');
        $(this).parent().addClass('active');
        var currentTab = $(this).attr('href');
        $('#seriestabs > div').hide();
        $(currentTab).show();
        return false;
    });
});

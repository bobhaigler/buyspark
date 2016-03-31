$(document).ready(function(){
    
    if($(window).height()>730 && $(window).width()>768) {
        $('#hero').css({'height':$(window).height()});
    }
    
    $('#amount').focusin(function(){
        if($(this).val()=='$50') {
            $(this).val('$');
        }
        $('.amount-clone').html($(this).val());
    });
    
    $('#amount').focusout(function(){
        if($(this).val()=='' || $(this).val()=='$') {
            $(this).val('$50');
        }
        $('.amount-clone').html($(this).val());
    });
    
    $('#amount').keyup(function(){
        var value = $(this).val().replace('$','');
        value = '$'+value;
        $(this).val(value)
        $('.amount-clone').html($(this).val());
    })
    
});
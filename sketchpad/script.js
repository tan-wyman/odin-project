$(document).ready(function() {
    var pixel_row = 16;
    var pixel_col = 16;
    var pixel = '<div class="pixel"></div>';
    var new_row = '<div class="new_row"></div>';
    var pixel_size = +$('#pixel_container').width() / pixel_row;
    var light_on = function() {
        $(this).addClass('highlight');
    };

    //populate pixel_container
    for(var i = 0; i < pixel_row; i++) {
        for(var j = 0; j < pixel_col; j++) {
            $('#pixel_container').append(pixel);
        }
            $('#pixel_container').append(new_row);
    }
    
    //define pixel size
    $('.pixel').css('width', pixel_size);
    $('.pixel').css('height', pixel_size);
    
    //highlight pixels on mouse enter
    $('#pixel_container').on('mouseenter', '.pixel', light_on);

});

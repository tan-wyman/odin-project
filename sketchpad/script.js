$(document).ready(function() {
    var pixel_row = 16;
    var pixel_col = 16;
    var pixel = '<div class="pixel"></div>';
    var pixel_size = $('#pixel_container').width() - 2; //-2 for border size
    var light_on = function() {
        $(this).addClass('highlight');
    };

    //define pixel size
    $('.pixel').css('width', pixel_size);
    $('.pixel').css('height', pixel_size);

    //populate pixel_container
    for(var i = 0; i < pixel_row; i++) {
        for(var j = 0; j < pixel_col; j++) {
            $('#pixel_container').append(pixel);
        }
        $('.pixel').last().addClass('.new_row');
    }

    $('#pixel_container').on('mouseenter', '.pixel', light_on);

});

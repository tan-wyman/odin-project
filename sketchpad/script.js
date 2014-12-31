$(document).ready(function() {
    var pixel_row = window.prompt('Number of rows:', '16');
    var pixel_col = window.prompt('Number of columns:', '16');
    var pixel_size = $('#pixel_container').width() / pixel_row;
    var pixel = '<div class="pixel"></div>';
    var new_row = '<div class="new_row"></div>';
    var light_on = function() {
        $(this).addClass('highlight');
    };
    var pixel_reset = function() {
        $('.pixel').removeClass('highlight');
    };

    var pixel_populate = function(pixel_row, pixel_col, pixel_size) {
        //populate pixels
        for(var i = 0; i < pixel_row; i++) {
            for(var j = 0; j < pixel_col; j++) {
                $('#pixel_container').append(pixel);
            }
            $('#pixel_container').append(new_row);
        }

        //define pixel size
        $('.pixel').css('width', pixel_size);
        $('.pixel').css('height', pixel_size);
    };


    //initial state
    pixel_populate(pixel_row, pixel_col, pixel_size);

    //highlight pixels on mouse enter
    $('#pixel_container').on('mouseenter', '.pixel', light_on);

    //reset pixels on button press
    $('#pixel_setting').on('click', '#pixel_reset', pixel_reset);

    //display row/col
    $('#pixel_row_count').append('<p>' +  pixel_row + '</p>');
    $('#pixel_col_count').append('<p>' +  pixel_col + '</p>');
});

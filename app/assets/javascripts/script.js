$(document).ready(function() {
    $('#shirt').mouseenter(function() {
        $('#shirt-color').fadeTo('slow', 1);
    });
$('#shirt').mouseleave(function() {
        $('#shirt-color').fadeTo('slow', 0);
    });
});

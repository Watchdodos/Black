$(document).ready(function() {
    $('#shirt').click(function() {
        $('#shirt-color').fadeTo('slow', 1);
    });
	$('#shirt').mouseleave(function() {
        $('#shirt-color').fadeTo('slow', 0);
    });
});

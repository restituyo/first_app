
$(document).ready(function($) {
			var element = $(".count-characters")
			function updateCountdown() {
			    // 140 is the max message length
			    
			    var remaining = 140 - element.val().length;
			    $('.countdown').text(remaining + ' characters remaining.');
			}

			function updateCount() {
			  var count = element.val().length;
			  var str = 'characters';
			  if ( count == 1 )
			    str = 'character';
			  
			  str += ' used';
			  $('.countdown').text(count + ' ' + str);
			}


     updateCountdown();
    element.change(updateCountdown);
    element.keyup(updateCountdown);

});
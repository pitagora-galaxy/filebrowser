
var textHead = '';
var textTable = '';
var galaxy_url = '';
var tool_id = '';

// MAIN
$(function() {
	
	// GET COOKIE VALUES
	for(var i=0; i<fields.length; i++){
		getCookieValue(fields[i].id);
	}
	
	// GET GET REQUEST
	var get = getRequest();
	if (get['GALAXY_URL']) {
		galaxy_url = get['GALAXY_URL'].replace('%3A', ':');
	}
	if (get['tool_id']) {
		tool_id = get['tool_id'];
	}
	log('galaxy_url = ' + galaxy_url);
	log('tool_id = ' + tool_id);
	
	// DISPLAY TABLE
	getHead();
	clearTable();
	getTable();
	
	// WHEN SEARCH CONDITION IS INPUT
	$('#table thead tr td *').change(function(){
		
		// SET COOKIE VALUES
		for(var i=0; i<fields.length; i++){
			setCookieValue(fields[i].id);
		}
		
		// DISPLAY TABLE
		clearTable();
		getTable();
	});
	
	// WHEN LOG WINDOW IS OPENED
	$('a#titlebar_log').click(function(){
		$('#windowLog').css({top:100,left:100});
		$('#windowLog').fadeIn('fast');
	});
	
});

// FLOATING WINDOW
$(function(){
	$('#floatWindow a.close').click(function(){
		$('#floatWindow').fadeOut('fast');
		return false;
	});
	$('#floatWindow dl dt').mousedown(function(e){
		
		$('#floatWindow')
			.data('clickPointX' , e.pageX - $('#floatWindow').offset().left)
			.data('clickPointY' , e.pageY - $('#floatWindow').offset().top);
		
		$(document).mousemove(function(e){
			$('#floatWindow').css({
				top:e.pageY  - $('#floatWindow').data('clickPointY')+'px',
				left:e.pageX - $('#floatWindow').data('clickPointX')+'px'
			});
		});
	}).mouseup(function(){
		$(document).unbind('mousemove');
	});
});

// LOG WINDOW
$(function(){
	$('#windowLog a.close').click(function(){
		$('#windowLog').fadeOut('fast');
		return false;
	});
	$('#windowLog dl dt').mousedown(function(e){
		
		$('#windowLog')
			.data('clickPointX' , e.pageX - $('#windowLog').offset().left)
			.data('clickPointY' , e.pageY - $('#windowLog').offset().top);
		
		$(document).mousemove(function(e){
			$('#windowLog').css({
				top:e.pageY  - $('#windowLog').data('clickPointY')+'px',
				left:e.pageX - $('#windowLog').data('clickPointX')+'px'
			});
		});
	}).mouseup(function(){
		$(document).unbind('mousemove');
	});
});

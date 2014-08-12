
function getHead(){
	buildHead();
	$('#table thead').html(textHead);
}

function getTable(){
	
	// PUT ALL SEARCH CONDITIONS INTO ONE OBJECT
	var data = new Object();
	for(var i=0; i<fields.length; i++){
		data[fields[i].id] = $('input#' + fields[i].id).attr('value');
	}
	
	$.ajax({
		url: 'search_table.php',
		data: data,
		dataType: 'json',
		success: function(result){
			
			// BUILD textTable
			buildText(result);
			
			// PRINT TABLE
			$('#table tbody').html(textTable);
			
			// EVENT
			$('#table tbody tr td').click(function(e){
				clickTable($(this).closest('tr'), $(this), e);
			})
			.css('cursor', 'pointer')
		},
		error: function(){
			alert('main.function.js getTable(): Error');
		}
	});
}

function appendHead(text){
	textHead = textHead.concat(text);
}

function appendText(text){
	textTable = textTable.concat(text);
}

function clearTable() {
	textTable = '';
	$('#table tbody').html('');
}

// INFO ---------------------------------------------------

// SHOW INFO WHEN TABLE IS CLICKED
function clickTable(tr, td, e) {
	
	if (td.attr('type') != null) {
	
		// COLOR
		$('#table tr td').css('color', '');
		td.css('color', 'red');
		
		// OPEN INFO WINDOW
		//$('#floatWindow').fadeOut('fast');
		$('#floatWindow').css({top:e.pageY+20,left:e.pageX});
		$('#floatWindow').fadeIn('fast');
		
		// CLEAR INFO
		$('#textInfo').html('');
		
		// SHOW INFO
		showInfo(td.attr('type'), td.attr('id'));
	}
}

// GET INFO FROM DATABASE AND SHOW IT
function showInfo(mode, id) {
	
	$.ajax({
		url: 'info.php?mode=' + mode + '&id=' + id,
		dataType: 'json',
		success: function(result){
			
			// PRINT ALL CONTENTS
			for(var i=0; i<result.length; i++) {
				
				if (result[i].content == '') {
					result[i].content = 'null';
				}
				$('#textInfo').append(
						  '<div class="menuF">'
						+ '<div class="menuF_t">' + result[i].title + ':' + '</div>'
						+ '<div class="menuF_c">' + result[i].content + '</div>'
						+ '</div>');
			}
		}
	});
}

// COOKIE ---------------------------------------------------

function getCookieValue(field) {
	if($.cookie('galaxy.fb.' + field)){
		$('input#' + field).attr('value', $.cookie('galaxy.fb.' + field));
	}
}
function setCookieValue(field) {
	$.cookie('galaxy.fb.' + field, $('input#' + field).attr('value'), { expires: 1 });
}

// OTHERS ---------------------------------------------------

function log(text) {
	$('div#log').append('<br>');
	$('div#log').append(text);
}

function getRequest(){
	if(location.search.length > 1) {
	    var get = new Object();
	    var ret = location.search.substr(1).split('&');
	    for(var i = 0; i < ret.length; i++) {
	    	var r = ret[i].split('=');
	    	get[r[0]] = r[1];
	    }
	    return get;
	  } else {
	    return false;
	  }
}


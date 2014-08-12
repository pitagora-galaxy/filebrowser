
// Modify this script according to the columns you want to show.

var fields = [
	{ id: 'run_date', name: 'Run Date', width: 100},
	{ id: 'lane_no', name: 'Lane', width: 50},
	{ id: 'sample_name', name: 'Sample Name', width: 100},
	{ id: 'organism', name: 'Organism', width: 100},
	{ id: 'researcher', name: 'Researcher', width: 100},
	{ id: 'align_date', name: 'Align Date', width: 100},
	{ id: 'file_name', name: 'File Name', width: 100}
];

function buildHead(){
    appendHead('<tr>');
    for (var i=0; i<fields.length; i++) {
        appendHead('<th width="' + fields[i].width + 'px">' + fields[i].name + '</th>');
    }
    appendHead('<th width="80px">Import</th>');
    appendHead('</tr><tr>');
    for (var i=0; i<fields.length; i++) {
        appendHead('<td><input type="text" style="width: ' + (fields[i].width - 5) + 'px;" id="' + fields[i].id + '" /></td>');
    }
    appendHead('<td></td>');
    appendHead('</tr>');
}

function buildText(result){
	var pre_run_id = null;
	var pre_lane_no = null;
	var pre_align_id = null;
	
	for(var i=0; i<result.length; i++){
		appendText('<tr>');
		
		// COLUMNS
		
		// RUN DATE
		if (result[i].run_id != pre_run_id || result[i].lane_no < pre_lane_no) {
			appendText('<td type="run" id="' + result[i].run_id + '">' + result[i].run_date + '</td>');
		} else {
			appendText('<td></td>');
		}
		
		// LANE
		appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].lane_no + '</td>');
		appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].sample_name + '</td>');
		appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].organism + '</td>');
		appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].researcher + '</td>');
		/*
		if (result[i].lane_no != pre_lane_no || result[i].run_id != pre_run_id) {
			appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].lane_no + '</td>');
			appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].sample_name + '</td>');
			appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].organism + '</td>');
			appendText('<td type="lane" id="' + result[i].lane_id + '">' + result[i].researcher + '</td>');
		} else {
			appendText('<td></td>')
			appendText('<td></td>')
			appendText('<td></td>')
			appendText('<td></td>')
		}
		*/
		
		// ALIGN
		if (result[i].align_id != pre_align_id || result[i].lane_no < pre_lane_no) {
			appendText('<td type="align" id="' + result[i].align_id + '">' + result[i].align_date + '</td>');
		} else {
			appendText('<td></td>');
		}
		
		// FILE
		appendText('<td type="file" id="' + result[i].file_id + '">' + result[i].file_name + '</td>');
		
		// IMPORT BUTTON
		appendText('<td>'
				+ '<FORM ACTION="' + galaxy_url + '" METHOD=POST>'
				+ '<INPUT TYPE=HIDDEN NAME="tool_id" VALUE="' + tool_id + '">'
				+ '<INPUT TYPE=HIDDEN NAME="db" VALUE="' + result[i].ref_genome + '">'
				+ '<INPUT TYPE=HIDDEN NAME="data_type" VALUE="eland_export">'
				+ '<INPUT TYPE=HIDDEN NAME="name" VALUE="' + result[i].sample_name + ': ' + result[i].file_name + '">'
				+ '<INPUT TYPE=HIDDEN NAME="path" VALUE="/data/solexa_data/run_result' + result[i].path + '">'
				+ '<input type="submit" value="Import" id="" />'
				+ '</FORM>'
				+ '</td>');
		
		appendText('</tr>');
		
		pre_run_id = result[i].run_id;
		pre_lane_no = result[i].lane_no;
		pre_align_id = result[i].align_id;
	}
}


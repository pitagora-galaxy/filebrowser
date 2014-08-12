<?php

/*
 * INPUT: mode and keys
 * OUTPUT: array $info by json
 * MODE: RUN, ALIGN, LANE, FILE
 */

include "mysql.php";

// OUTPUT
$info = array();

// CONNECT DB
$conn = db_connect();

// GET
$mode = $_GET['mode'];
$id = $_GET['id'];

// MODE: RUN
if ($mode == "run") {
	
	// SQL
	$sql = "SELECT * FROM run WHERE run_id = ".$id;
	
	// GET RESULT SET
	$result = mysql_query($sql, $conn) or die("Failed to send this query<br />SQL: ".$sql);
	
	// SET RESULT SET INTO ARRAY
	$data = mysql_fetch_array($result);
	
	//array_push($info, array('title' => 'Run ID', 'content' => $data['run_id']));
	array_push($info, array('title' => 'Run Directory', 'content' => $data['run_dir']));
	array_push($info, array('title' => 'Run Date', 'content' => $data['run_date']));
	array_push($info, array('title' => 'Machine Name', 'content' => $data['machine']));
	array_push($info, array('title' => 'GA Ver', 'content' => $data['ga']));
	array_push($info, array('title' => 'Flowcell ID', 'content' => $data['flowcell']));
	array_push($info, array('title' => 'Sample Kit Ver', 'content' => $data['sample_kit']));
	array_push($info, array('title' => 'Cluster Kit Ver', 'content' => $data['cluster_kit']));
	array_push($info, array('title' => 'Sequencing Kit Ver', 'content' => $data['seq_kit']));
	array_push($info, array('title' => 'Comment', 'content' => $data['comment']));
	
	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}
// MODE: ALIGN
else if ($mode == "align") {
	
	// SQL
	$sql = "SELECT * FROM align WHERE align_id = ".$id;

	// GET RESULT SET
	$result = mysql_query($sql, $conn) or die("Failed to send this query<br />SQL: ".$sql);
	
	// SET RESULT SET INTO ARRAY
	$data = mysql_fetch_array($result);
	
	//array_push($info, array('title' => 'Align ID', 'content' => $data['align_id']));
	array_push($info, array('title' => 'Align Directory', 'content' => $data['align_dir']));
	array_push($info, array('title' => 'Align Date', 'content' => $data['align_date']));
	array_push($info, array('title' => 'Img Analysis Ver', 'content' => $data['img_analysis_ver']));
	array_push($info, array('title' => 'Basecall Ver', 'content' => $data['basecall_ver']));
	array_push($info, array('title' => 'Alignment Ver', 'content' => $data['alignment_ver']));
	array_push($info, array('title' => 'Comment', 'content' => $data['comment']));
	
	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}
// MODE: LANE
else if ($mode == "lane") {
	
	// SQL
	$sql = "SELECT * FROM lane WHERE lane_id = ".$id;

	// GET RESULT SET
	$result = mysql_query($sql, $conn) or die("Failed to send this query<br />SQL: ".$sql);

	// SET RESULT SET INTO ARRAY
	$data = mysql_fetch_array($result);
	
	//array_push($info, array('title' => 'Lane ID', 'content' => $data['lane_id']));
	//array_push($info, array('title' => 'Run ID', 'content' => $data['run_id']));
	//array_push($info, array('title' => 'Lane No.', 'content' => $data['lane_no']));
	array_push($info, array('title' => 'Sample Name', 'content' => $data['sample_name']));
	array_push($info, array('title' => 'Organism', 'content' => $data['organism']));
	array_push($info, array('title' => 'Ref Genome', 'content' => $data['ref_genome']));
	array_push($info, array('title' => 'Type', 'content' => $data['type']));
	array_push($info, array('title' => 'Fragment Size', 'content' => $data['frag_size']));
	array_push($info, array('title' => 'Is Pair', 'content' => $data['is_pair']));
	array_push($info, array('title' => 'Researcher', 'content' => $data['researcher']));
	array_push($info, array('title' => 'Institute', 'content' => $data['institute']));
	
	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}
// MODE: FILE
else if ($mode == "file") {

	// SQL
	$sql = "SELECT * FROM file WHERE file_id = ".$id;

	// GET RESULT SET
	$result = mysql_query($sql, $conn) or die("Failed to send this query<br />SQL: ".$sql);

	// SET RESULT SET INTO ARRAY
	$data = mysql_fetch_array($result);

	//array_push($info, array('title' => 'File ID', 'content' => $data['file_id']));
	//array_push($info, array('title' => 'Run ID', 'content' => $data['run_id']));
	//array_push($info, array('title' => 'Lane No.', 'content' => $data['lane_no']));
	//array_push($info, array('title' => 'Align ID', 'content' => $data['align_id']));
	array_push($info, array('title' => 'File Name', 'content' => $data['file_name']));
	array_push($info, array('title' => 'Read Length', 'content' => $data['read_length']));
	array_push($info, array('title' => 'Single/Pair', 'content' => $data['is_pair']));
	array_push($info, array('title' => 'Seed Length', 'content' => $data['seed_length']));
	array_push($info, array('title' => 'Gerald Parameter', 'content' => $data['gerald_param']));
	array_push($info, array('title' => 'Ref Genome', 'content' => $data['ref_genome']));
	array_push($info, array('title' => 'Path', 'content' => $data['path']));
	array_push($info, array('title' => 'Eland', 'content' => $data['eland']));
	array_push($info, array('title' => 'Comment', 'content' => $data['comment']));
	
	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}

// RETURN JSON DATA
echo json_encode($info);

// CLOSE DB
db_close($conn);

?>


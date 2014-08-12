<?php

// candidate.php?mode=organism

include "mysql.php";

// OUTPUT
$list = array();

// CONNECT DB
$link = db_connect();

// GET
$mode = $_GET['mode'];

/*
 * To add new modes, copy the following
 * and change mode, sql, and column_name.
 */

// MODE: MACHINE
if ($mode == "organism") {

	// SQL
	$sql = "SELECT DISTINCT organism FROM lane";

	// GET RESULT SET
	$result = mysql_query($sql, $link) or die("Query Failed<br />SQL:".$sql);

	while ($data = mysql_fetch_array($result)) {
		array_push($list, array('value' => $data['organism']));
	}
	
	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}

// MODE: USER
else if ($mode == "user") {

	// SQL
	$sql = "SELECT DISTINCT email FROM user";

	// GET RESULT SET
	$result = mysql_query($sql, $link) or die("Query Failed<br />SQL:".$sql);

	while ($data = mysql_fetch_array($result)) {
		array_push($list, array('value' => $data['email']));
	}

	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}

// MODE: DATA_TYPE
else if ($mode == "data_type") {

	// SQL
	$sql = "SELECT DISTINCT data_type FROM file";

	// GET RESULT SET
	$result = mysql_query($sql, $link) or die("Query Failed<br />SQL:".$sql);

	while ($data = mysql_fetch_array($result)) {
		array_push($list, array('value' => $data['data_type']));
	}

	// FREE MEMORY OF THE RESULT SET
	mysql_free_result($result);
}

// RETURN JSON DATA
echo json_encode($list);

// CLOSE DB
db_close($link);

?>

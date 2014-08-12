<?php

// search_table.php?run_date=&sample_name=&organism=&sample_name=&researcher=&align_date=&file_name=

include "mysql.php";

// CONNECT DB
$conn = db_connect();

// SQL
$sql = "
SELECT * FROM browser b
WHERE
    run_date    LIKE '".$_GET['run_date']."%'
AND align_date  LIKE '".$_GET['align_date']."%'
AND lane_no     LIKE '".$_GET['lane_no']."%'
AND sample_name LIKE '%".$_GET['sample_name']."%'
AND organism    LIKE '%".$_GET['organism']."%'
AND researcher  LIKE '%".$_GET['researcher']."%'
AND file_name   LIKE '%".$_GET['file_name']."%'
ORDER BY
    run_date DESC
  , align_date DESC
  , lane_no ASC
LIMIT 500
";

// GET RESULT SET
$result = mysql_query($sql, $conn) or die("Failed to send this query<br />SQL: ".$sql);

// PREPARE RETURN DATA
$rows = array();
while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	array_push($rows, $row);
}

// RETURN JSON DATA
echo json_encode($rows);

// FREE MEMORY OF THE RESULT SET
mysql_free_result($result);

// CLOSE DB
db_close($conn);

?>


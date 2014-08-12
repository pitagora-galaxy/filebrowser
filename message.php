<?php

// search_table.php?run_date=&sample_name=&organism=&sample_name=&researcher=&align_date=&file_name=&data_type=

include "mysql.php";

// CONNECT DB
$link = db_connect();

// SQL
$sql1 = "
SELECT
    r.run_id
  , r.run_dir
FROM
    run r LEFT JOIN lane l ON r.run_id = l.run_id
WHERE
    l.run_id IS NULL
ORDER BY
    r.run_id
";

$sql2 = "
SELECT
    r.run_id
  , r.run_dir
FROM
    run r LEFT JOIN file f ON r.run_id = f.run_id
WHERE
    f.run_id IS NULL
ORDER BY
    r.run_id
";

$sql3 = "
SELECT
    a.align_id
  , a.align_dir
FROM
    align a LEFT JOIN file f ON a.align_id = f.align_id
WHERE
    f.align_id IS NULL
ORDER BY
    a.align_id
";

// GET RESULT SET
$result1 = mysql_query($sql1, $link) or die("Failed to send this query<br />SQL:".$sql1);
$result2 = mysql_query($sql2, $link) or die("Failed to send this query<br />SQL:".$sql2);
$result3 = mysql_query($sql3, $link) or die("Failed to send this query<br />SQL:".$sql3);


?>

<html>
<body>
<div>
	<h2>The following RUN records have no corresponding LANE records.</h2>
	<table>
		<tr>
			<th>Run ID</th>
			<th>Run Dir</th>
		</tr>
		<?php while ($data = mysql_fetch_array($result1)) { ?>
		<tr>
			<td><?php echo $data['run_id']; ?></td>
			<td><?php echo $data['run_dir']; ?></td>
		</tr>
		<?php } ?>
	</table>
</div>
<div>
	<h2>The following RUN records have no corresponding FILE records.</h2>
	<table>
		<tr>
			<th>Run ID</th>
			<th>Run Dir</th>
		</tr>
		<?php while ($data = mysql_fetch_array($result2)) { ?>
		<tr>
			<td><?php echo $data['run_id']; ?></td>
			<td><?php echo $data['run_dir']; ?></td>
		</tr>
		<?php } ?>
	</table>
</div>
<div>
	<h2>The following ALIGN records have no corresponding FILE records.</h2>
	<table>
		<tr>
			<th>Align ID</th>
			<th>Align Dir</th>
		</tr>
		<?php while ($data = mysql_fetch_array($result3)) { ?>
		<tr>
			<td><?php echo $data['align_id']; ?></td>
			<td><?php echo $data['align_dir']; ?></td>
		</tr>
		<?php } ?>
	</table>
</div>
</body>
</html>

<?php

// FREE MEMORY OF THE RESULT SET
mysql_free_result($result);

// CLOSE DB
db_close($link);

?>


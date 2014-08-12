<?php

mb_language("uni");
mb_internal_encoding("utf-8");
mb_http_input("auto");
mb_http_output("utf-8");

function db_connect() {
	
	$url = "localhost:3306";
	$user = "galaxy";
	$pass = "galaxy";
	$db = "filebrowser_03";
	
	// CONNECTION
	$link = mysql_connect($url,$user,$pass) or die("Failed to connect MySQL");

	// SET ENCODE
	mysql_query("SET NAMES utf8",$link);
	
	// SELECT DATABASE
	$sdb = mysql_select_db($db,$link) or die("Failed to select database");
	
	return $link;
}

function db_pconnect() {

	// CONNECTION
	$link = mysql_pconnect($url,$user,$pass) or die("Failed to connect MySQL");

	// SELECT DATABASE
	$sdb = mysql_select_db($db,$link) or die("Failed to select database");
	  
	return $link;
}

function db_close($link) {
	
	mysql_close($link) or die("Failed to close MySQL");
}

?>

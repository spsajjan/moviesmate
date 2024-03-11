<?php
ob_start();
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();


if ($action == "get_media") {
	$get = $crud->get_media();
	if ($get)
		echo $get;
}

if ($action == "save_media") {
	$save = $crud->save_media();
	if ($save)
		echo $save;
}

if ($action == "delete_media") {
	$save = $crud->delete_media();
	if ($save)
		echo $save;
}

if ($action == "save_genre") {
	$save = $crud->save_genre();
	if ($save)
		echo $save;
}

if ($action == "delete_genre") {
	$save = $crud->delete_genre();
	if ($save)
		echo $save;
}

if ($action == "get_cast") {
	$get = $crud->get_cast();
	if ($get)
		echo $get;
}

if ($action == "save_cast") {
	$save = $crud->save_cast();
	if ($save)
		echo $save;
}

if ($action == "save_lang") {
	$save = $crud->save_lang();
	if ($save)
		echo $save;
}

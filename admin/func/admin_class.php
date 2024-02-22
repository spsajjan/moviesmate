<?php
session_start();
ini_set('display_errors', 1);
class Action
{
	private $db;

	public function __construct()
	{
		ob_start();
		include '../config/db_connect.php';
		$this->db = $conn;
	}
	function __destruct()
	{
		$this->db->close();
		ob_end_flush();
	}

	function get_media()
	{
		extract($_POST);
		$qry = $this->db->query("SELECT * FROM `media` WHERE id=" . $id);
		$data = $qry->fetch_array();
		return json_encode($data);
	}
	function save_media()
	{
		extract($_POST);
		$title = $this->db->real_escape_string($title);
		$content = $this->db->real_escape_string($content);
		$title = strtolower($title);
		$genre_id = implode(',', $genre);
		$data = " id = '$id' ";
		$data .= ", title = '$title' ";
		$data .= ", lang = '$lang' ";
		$data .= ", category = '$category' ";
		$data .= ", type = '$type' ";
		$data .= ", genre = '$genre_id' ";
		if(!empty($casts)){
			$casts_id = implode(',', $casts);
			$data .= ", casts = '$casts_id' ";
		}
		$data .= ", rating = '$rating' ";
		$data .= ", content = '$content' ";
		$newDate = date("Y-m-d", strtotime($date));		
		$data .= ", released_dt = '$newDate' ";
		$data .= ", added_dt = current_timestamp()";
		if (!empty($_FILES['img']['name'])) {
			$fname = $_FILES['img']['name'];
			$tmp_file = $_FILES["img"]["tmp_name"];
			$qry_type = $this->db->query("SELECT * FROM `media_type` WHERE id={$type}");
			$type_name = $qry_type->fetch_assoc();
			$qry_category = $this->db->query("SELECT * FROM `media_category` WHERE id={$category}");
			$category_name = $qry_category->fetch_assoc();
			$location = '../../main/img/' . $type_name['type'] . '/' . $category_name['category'] . '/' . $fname;
			$move = move_uploaded_file($tmp_file, $location);
			if ($move) {
				$data .= ", img_url = '$fname' ";
			}
		}
		if (empty($id)) {
			$save = $this->db->query("INSERT INTO `media` SET " . $data);
		} else {
			//-- Change the image location respectively.
			if(empty($_FILES['img']['name'])){
			//-- Get Previous Location
			$sql = "SELECT * FROM media WHERE id={$id}";
			$qry = $this->db->query($sql);
			$result = $qry->fetch_assoc();
			$img_url = $result['img_url'];
			$qry_type = $this->db->query("SELECT * FROM `media_type` WHERE id={$result['type']}");
			$type_name = $qry_type->fetch_assoc();
			$qry_category = $this->db->query("SELECT * FROM `media_category` WHERE id={$result['category']}");
			$category_name = $qry_category->fetch_assoc();
			$old_location = '../../main/img/' . $type_name['type'] . '/' . $category_name['category']  . '/' . $img_url;
			//-- Get New Location
			$qry_type = $this->db->query("SELECT * FROM `media_type` WHERE id={$type}");
			$type_name = $qry_type->fetch_assoc();
			$qry_category = $this->db->query("SELECT * FROM `media_category` WHERE id={$category}");
			$category_name = $qry_category->fetch_assoc();
			$location = '../../main/img/' . $type_name['type'] . '/' . $category_name['category'] . '/' . $img_url;

				if($location != $old_location){
					rename($old_location, $location);
					//--* Here move the previously uploaded image to new directory.
				}
			}

			$save = $this->db->query("UPDATE `media` SET " . $data . " WHERE id = " . $id);
			
		}
		if ($save) {
			return 1;
		}
		return;
	}

	function delete_media()
	{
		extract($_POST);
		$delete = $this->db->query("DELETE FROM `media` WHERE `id` = " . $id);
		if ($delete)
			return 1;
	}

	function save_genre()
	{
		extract($_POST);

		$data = " id = '$id' ";
		$data .= ", name = '$name' ";

		if (!empty($_FILES['img']['name'])) {
			$fname = $_FILES['img']['name'];
			$move = move_uploaded_file($_FILES['img']['tmp_name'], '../../main/img/genres/' . $fname);
			if ($move) {
				$data .= ", img_url = '$fname' ";
			}
		}
		if (empty($id)) {
			$save = $this->db->query("INSERT INTO `genre` SET " . $data);
		} else {
			$save = $this->db->query("UPDATE `genre` SET " . $data . " WHERE id = " . $id);
		}
		if ($save) {
			return 1;
		}
	}

	function delete_genre()
	{
		extract($_POST);
		$delete = $this->db->query("DELETE FROM `genre` WHERE `id` = " . $id);
		if ($delete)
			return 1;
	}

	function save_cast(){
		extract($_POST);
		$data = " id = '$id' ";
		$data .= ", first_name = '$first_name' ";
		$data .= ", last_name = '$last_name' ";

		if (!empty($_FILES['img']['name'])) {
			$fname = $_FILES['img']['name'];
			$move = move_uploaded_file($_FILES['img']['tmp_name'], '../../main/img/casts/' . $fname);
			if ($move) {
				$data .= ", img_url = '$fname' ";
			}
		}

		$data .= ", dob = '$dob' ";
		$data .= ", height = '$height' ";
		$data .= ", gender = '$gender' ";
		if (empty($id)) {
			$save = $this->db->query("INSERT INTO `casts` SET " . $data);
		} else {
			$save = $this->db->query("UPDATE `casts` SET " . $data . " WHERE id = " . $id);
		}
		if ($save) {
			return 1;
		}

	}
	
	function get_cast()
	{
		extract($_POST);
		$qry = $this->db->query("SELECT * FROM `casts` WHERE id=" . $id);
		$data = $qry->fetch_array();
		return json_encode($data);
	}
}

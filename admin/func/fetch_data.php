<?php
class GetData
{
    public $db;
    function __construct()
    {
        include('./config/db_connect.php');
        $this->db = $conn;
    }
    function __destruct()
    {
        $this->db->close();
    }
    function get_type()
    {
        $sql = "SELECT * FROM media_type";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_category()
    {
        $sql = "SELECT * FROM media_category";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_genre()
    {
        $sql = "SELECT * FROM genre";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_single_media($id)
    {
        $sql = "SELECT * FROM media WHERE id=" . $id;
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result;
    }

    function get_media_type($id)
    {
        $sql = "SELECT * FROM media_type WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['type'];
    }
    function get_media_category($id)
    {
        $sql = "SELECT * FROM media_category WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['category'];
    }
    function get_lang($id){
        if(is_null($id)|| $id == 0){
            $id = 12;
        }
        $sql = "SELECT * FROM lang WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['language'];
    }
    function get_langs(){
        $sql = "SELECT * FROM lang";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    function get_all_casts(){
        $sql = "SELECT * FROM casts";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
}
$getData = new GetData;

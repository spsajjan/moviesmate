<?php
class Database
{
    public $db;
    function __construct()
    {
        include('../config/db_connect.php');
        $this->db = $conn;
    }
    function __destruct()
    {
        $this->db->close();
    }

    // -- Gets all media types
    function get_types()
    {
        $sql = "SELECT * FROM media_type";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    // -- Gets all Categories
    function get_categories()
    {
        $sql = "SELECT * FROM media_category";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    // -- Gets all genres
    function get_genres()
    {
        $sql = "SELECT * FROM genre";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    function get_genre($id)
    {
        $sql = "SELECT * FROM `genre` WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['name'];
    }
    function get_genre_id($name)
    {
        $sql = "SELECT `id` FROM `genre` WHERE name LIKE '$name'";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['id'];
    }
    // -- Gets single media by id
    function get_single_media($id)
    {
        $sql = "SELECT * FROM media WHERE id=" . $id;
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result;
    }
    // -- Gets specific media
    function get_spec_media($order, $ado, $initial_page, $limit)
    {
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category` 
            FROM `media` ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    function get_media_sort($alphabet, $initial_page, $limit)
    {
        $sql = "SELECT * FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'ORDER BY id DESC LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_anime_movies($order, $ado, $initial_page, $limit)
    {
        $type_id = $this->get_type_id('anime');
        $category_id = $this->get_category_id('movie');
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category` 
            FROM `media` 
            WHERE `category`= {$category_id} AND `type`= {$type_id}
            ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_anime_series($order, $ado, $initial_page, $limit)
    {
        $type_id = $this->get_type_id('anime');
        $category_id = $this->get_category_id('series');
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category` 
        FROM `media` 
        WHERE `category`= {$category_id} AND `type`= {$type_id}
        ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_live_movies($order, $ado, $initial_page, $limit)
    {
        $type_id = $this->get_type_id('live');
        $category_id = $this->get_category_id('movie');
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category` 
        FROM `media` 
        WHERE `category`= {$category_id} AND `type`= {$type_id}
        ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_live_series($order, $ado, $initial_page, $limit)
    {
        $type_id = $this->get_type_id('live');
        $category_id = $this->get_category_id('series');
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category` 
        FROM `media` 
        WHERE `category`= {$category_id} AND `type`= {$type_id}
        ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_media_year($year, $order, $ado, $initial_page, $limit)
    {
        $sql = "SELECT `id`,`title`,`img_url`, `rating`, `released_dt`, `type`, `category` FROM media 
            WHERE YEAR(released_dt)=$year ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_media_with_genre($genre)
    {
        $media_ids = null;
        $genre_this_id = $this->get_genre_id($genre);
        $sql = "SELECT `id`,`genre` FROM `media`";
        $qry = $this->db->query($sql);
        $rows = $qry->fetch_all(MYSQLI_ASSOC);
        $i = 0;
        $i = 0;
        foreach ($rows as $row) :
            $genre_ids = array();
            $genre_ids = $row['genre'];
            $genre_ids = explode(",", $genre_ids);
            if (in_array($genre_this_id, $genre_ids)) :
                $media_ids[$i] = $row["id"];
                $i++;
            endif;
        endforeach;
        return $media_ids;
    }

    function get_media_array($ids)
    {
        $ids = implode(",", $ids);
        $sql = "SELECT `id`,`title`,`img_url`, `rating`, `released_dt`, `type` , `category` FROM  `media` WHERE `id` IN ($ids)";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    // -- Gets the media type id by its name
    function get_type_id($type)
    {
        $sql = "SELECT `id` FROM `media_type` WHERE `type`='{$type}'";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['id'];
    }
    // -- Gets the media category id by its name
    function get_category_id($category)
    {
        $sql = "SELECT `id` FROM `media_category` WHERE `category`='{$category}'";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['id'];
    }
    // -- Gets the type of media by the type id
    function get_media_type($id)
    {
        $sql = "SELECT * FROM media_type WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['type'];
    }
    // -- Gets the category of media by the category id
    function get_media_category($id)
    {
        $sql = "SELECT * FROM media_category WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['category'];
    }

    function get_lang($id)
    {
        if (is_null($id) || $id == 0) {
            $id = 12;
        }
        $sql = "SELECT * FROM lang WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['language'];
    }
    function get_langs()
    {
        $sql = "SELECT * FROM lang";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_movies($order, $ado, $initial_page, $limit)
    {
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category`
            FROM `media` WHERE category=2 ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_series($order, $ado, $initial_page, $limit)
    {
        $sql = "SELECT `id`,`title`,`img_url`,`rating`,`released_dt`,`type`, `category`
            FROM `media` WHERE category=1 ORDER BY $order $ado LIMIT $initial_page,$limit";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_single_cast($id)
    {
        $sql = "SELECT * FROM `casts` WHERE id={$id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result;
    }
    function get_spec_casts($start, $end)
    {
        $sql = "SELECT * FROM `casts` LIMIT $start,$end";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }
    function get_twelve_casts()
    {
        $sql = "SELECT * FROM `casts`  ORDER BY id DESC LIMIT 12";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }

    function get_all_casts()
    {
        $sql = "SELECT * FROM casts";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }


    // -- Gets all unique / different years in the database
    function get_years()
    {
        $sql = "SELECT DISTINCT YEAR(released_dt) AS years FROM media ORDER BY released_dt ASC";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_all(MYSQLI_ASSOC);
        return $result;
    }



    // ----------------------------------- COUNT QUERIES ---------------------------------------

    // -- Gets the count of media's in a specific year
    function get_media_year_num($year)
    {
        $sql = "SELECT COUNT(*) AS mediaYearCount FROM media WHERE YEAR(released_dt)=$year";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['mediaYearCount'];
    }

    // -- Gets the total count of media.
    function get_media_num()
    {
        $sql = "SELECT COUNT(*) AS `mediaCount` FROM  `media`";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['mediaCount'];
    }


    // -- Get the count of genre
    function get_genre_num()
    {
        $sql = "SELECT COUNT(*) AS genresCount FROM `genre`";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['genresCount'];
    }
    function get_casts_num()
    {
        $sql = "SELECT COUNT(*) AS castsCount FROM `casts`";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['castsCount'];
    }

    function get_langs_num()
    {
        $sql = "SELECT COUNT(*) AS langsCount FROM `lang`";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['langsCount'];
    }

    // -- Gets the count of movies in media
    function get_movies_num()
    {
        $sql = "SELECT COUNT(*) AS moviesCount FROM `media` WHERE category=2";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['moviesCount'];
    }
    // -- Gets the Count of series in media
    function get_series_num()
    {
        $sql = "SELECT COUNT(*) AS seriesCount FROM `media` WHERE category=1";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['seriesCount'];
    }
    // -- Gets the count of media that is anime movies
    function get_anime_movies_num()
    {
        $type_id = $this->get_type_id('anime');
        $category_id = $this->get_category_id('movie');
        $sql = "SELECT COUNT(*) AS animeMoviesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['animeMoviesCount'];
    }
    function get_anime_series_num()
    {
        $type_id = $this->get_type_id('anime');
        $category_id = $this->get_category_id('series');
        $sql = "SELECT COUNT(*) AS animeSeriesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['animeSeriesCount'];
    }

    function get_live_movies_num()
    {
        $type_id = $this->get_type_id('live');
        $category_id = $this->get_category_id('movie');
        $sql = "SELECT COUNT(*) AS liveMoviesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['liveMoviesCount'];
    }

    function get_live_series_num()
    {
        $type_id = $this->get_type_id('live');
        $category_id = $this->get_category_id('series');
        $sql = "SELECT COUNT(*) AS liveSeriesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['liveSeriesCount'];
    }

    // -- Sort Media by Alphabet
    function get_media_sort_num($alphabet)
    {
        $sql = "SELECT COUNT(*) AS mediaSortCount FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'";
        $qry = $this->db->query($sql);
        $result = $qry->fetch_assoc();
        return $result['mediaSortCount'];
    }
}
$dbData = new Database;

<?php
// ------------ This file is created and developed by SHASHANK SAJJAN -----------------------

// ---------------------------------- CONTROLLER ----------------------------------------------

function get_query($category_id, $type_id, $initial_page, $limit)
{
    $query = "SELECT `id`,`title`,`img_url`, `rating`, `released_dt`  FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id} ORDER BY";
    // get data of selected rows per page
    if (isset($_GET['order'])) {
        if ($_GET['order'] == "alphaAsc") {
            $query .= " title ASC LIMIT " . $initial_page . ',' . $limit;
            return $query;
        } else if ($_GET['order'] == "alphaDesc") {
            $query .= " title DESC LIMIT " . $initial_page . ',' . $limit;
            return $query;
        } else if ($_GET['order'] == "idAsc") {
            $query .= " id ASC LIMIT " . $initial_page . ',' . $limit;
            return $query;
        } else if ($_GET['order'] == "ratingAsc") {
            $query .= " rating DESC LIMIT " . $initial_page . ',' . $limit;
            return $query;
        }
    } else {
        $query .= " id DESC LIMIT " . $initial_page . ',' . $limit;
        return $query;
    }
}

// ---------------------------------- DATABASE ----------------------------------------------
// -- Important Sub Functions
function get_media_type($id)
{
    include('config/_dbconnect.php');
    $sql_type = "SELECT `type` FROM `media_type` WHERE `id`={$id}";
    $result_type = mysqli_query($conn, $sql_type);
    $row_type = mysqli_fetch_assoc($result_type);
    return $row_type['type'];
    mysqli_close($conn);
}
function get_media_category($id)
{
    include('config/_dbconnect.php');
    $sql_category = "SELECT `category` FROM `media_category` WHERE `id`={$id}";
    $result_category = mysqli_query($conn, $sql_category);
    $row_category = mysqli_fetch_assoc($result_category);
    return $row_category['category'];
    mysqli_close($conn);
}
function get_category_id($category)
{
    include('config/_dbconnect.php');
    $sql_category = "SELECT `id` FROM `media_category` WHERE `category`='{$category}'";
    $result_category = mysqli_query($conn, $sql_category);
    $row_category = mysqli_fetch_assoc($result_category);
    return $row_category['id'];
    mysqli_close($conn);
}
function get_type_id($type)
{
    include('config/_dbconnect.php');
    $sql_type = "SELECT `id` FROM `media_type` WHERE `type`='{$type}'";
    $result_type = mysqli_query($conn, $sql_type);
    $row_type = mysqli_fetch_assoc($result_type);
    return $row_type['id'];
    mysqli_close($conn);
}

// -- All Media

function get_media_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS `mediaCount` FROM  `media`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['mediaCount'];
    mysqli_close($conn);
}

function get_spec_media($order, $ado, $initial_page, $limit)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` ORDER BY $order $ado LIMIT $initial_page,$limit";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}
// -- All Years
function get_years()
{
    include('config/_dbconnect.php');
    $sql = "SELECT DISTINCT YEAR(released_dt) AS years FROM media ORDER BY released_dt ASC";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_media_year_num($year)
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS mediaYearCount FROM media WHERE YEAR(released_dt)=$year";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['mediaYearCount'];
    mysqli_close($conn);
}

function get_media_year($year, $order, $ado, $initial_page, $limit)
{
    include('config/_dbconnect.php');
    $sql = "SELECT `id`,`title`,`img_url`, `rating`, `released_dt`, `type`, `category` FROM media WHERE YEAR(released_dt)=$year ORDER BY $order $ado LIMIT $initial_page,$limit";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

// -- All Movies
function get_movies_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS moviesCount FROM `media` WHERE category=2";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['moviesCount'];
    mysqli_close($conn);
}
function get_movies($order, $ado, $initial_page, $limit)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE category=2 ORDER BY $order $ado LIMIT $initial_page,$limit";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}
// -- All Series
function get_series_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS moviesCount FROM `media` WHERE category=1";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['moviesCount'];
    mysqli_close($conn);
}

function get_series($order, $ado, $initial_page, $limit)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE category=1 ORDER BY $order $ado LIMIT $initial_page,$limit";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}
// -- Sort Media by Alphabet
function get_media_sort_num($alphabet)
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS mediaSortCount FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['mediaSortCount'];
    mysqli_close($conn);
}

function get_media_sort($alphabet, $initial_page, $limit)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'ORDER BY id DESC LIMIT $initial_page,$limit";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}


function get_anime_series_num()
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('series');
    $sql = "SELECT COUNT(*) AS animeSeriesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['animeSeriesCount'];
    mysqli_close($conn);
}
function get_anime_series($initial_page, $limit)
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('series');
    $sql = get_query($category_id, $type_id, $initial_page, $limit);
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}
function get_anime_movies_num()
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('movie');
    $sql = "SELECT COUNT(*) AS animeMoviesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['animeMoviesCount'];
    mysqli_close($conn);
}

function get_anime_movies($initial_page, $limit)
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('movie');
    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);
    $result = mysqli_query($conn, $getQuery);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_live_movies_num()
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('movie');
    $sql = "SELECT COUNT(*) AS liveMoviesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['liveMoviesCount'];
    mysqli_close($conn);
}

function get_live_movies($initial_page, $limit)
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('movie');
    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);
    $result = mysqli_query($conn, $getQuery);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_live_series_num()
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('series');
    $sql = "SELECT COUNT(*) AS liveSeriesCount FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['liveSeriesCount'];
    mysqli_close($conn);
}

function get_live_series($initial_page, $limit)
{
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('series');
    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);
    $result = mysqli_query($conn, $getQuery);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_single($id)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row;
    mysqli_close($conn);
}

function get_genre($id)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['name'];
    mysqli_close($conn);
}

function get_lang($id)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `lang` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['language'];
    mysqli_close($conn);
}

function get_single_cast($id)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `casts` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row;
    mysqli_close($conn);
}

function get_all_genres()
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_genre_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS genreCount FROM `genre`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['genreCount'];
    mysqli_close($conn);
}

// ---------------------------------------------------------- REMAKE -------------------------------------------------

function get_genre_id($name)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre` WHERE name LIKE '$name'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['id'];
    mysqli_close($conn);
}
function get_media_array($ids)
{
    $ids = implode(",", $ids);
    include('config/_dbconnect.php');
    $sql = "SELECT `id`,`title`,`img_url`, `rating`, `released_dt`, `type` , `category` FROM  `media` WHERE `id` IN ($ids)";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $rows;
    mysqli_close($conn);
}
function get_media_with_genre($genre)
{
    $media_ids = null;
    include('config/_dbconnect.php');
    $genre_this_id = get_genre_id($genre);
    $sql = "SELECT `id`,`genre` FROM `media`";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
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
    mysqli_close($conn);
}
function get_twelve_casts()
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `casts`  ORDER BY id DESC LIMIT 12";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}
function get_casts_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT COUNT(*) AS castsCount FROM `casts`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['castsCount'];
    mysqli_close($conn);
}

function get_all_casts()
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `casts`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_spec_casts($start, $end)
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `casts` LIMIT $start,$end";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

<?php

function get_media_num()
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM  `media`";
    $result = mysqli_query($conn, $sql);
    $num = mysqli_num_rows($result);
    return $num;
    mysqli_close($conn);
}

function get_media_type($id)
{
    include('config/_dbconnect.php');
    $sql_type = "SELECT * FROM `media_type` WHERE `id`={$id}";
    $result_type = mysqli_query($conn, $sql_type);
    $row_type = mysqli_fetch_assoc($result_type);
    return $row_type['type'];
    mysqli_close($conn);
}
function get_media_category($id)
{
    include('config/_dbconnect.php');
    $sql_category = "SELECT * FROM `media_category` WHERE `id`={$id}";
    $result_category = mysqli_query($conn, $sql_category);
    $row_category = mysqli_fetch_assoc($result_category);
    return $row_category['category'];
    mysqli_close($conn);
}

function get_category_id($category)
{
    include('config/_dbconnect.php');
    $sql_category = "SELECT * FROM `media_category` WHERE `category`='{$category}'";
    $result_category = mysqli_query($conn, $sql_category);
    $row_category = mysqli_fetch_assoc($result_category);
    return $row_category['id'];
    mysqli_close($conn);
}

function get_type_id($type)
{
    include('config/_dbconnect.php');
    $sql_type = "SELECT * FROM `media_type` WHERE `type`='{$type}'";
    $result_type = mysqli_query($conn, $sql_type);
    $row_type = mysqli_fetch_assoc($result_type);
    return $row_type['id'];
    mysqli_close($conn);
}

function get_query($category_id, $type_id, $initial_page, $limit)
{
    $query = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id} ORDER BY";
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

function get_media()
{
    // variable to store number of rows per page
    $limit = 12;
    //Connect to database
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media`";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);
    // update the active page number
    if (!isset($_GET['page'])) {
        $page_number = 1;
    } else {
        $page_number = $_GET['page'];
    }
    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;

    if (isset($_GET['order'])) {
        if ($_GET['order'] == "alphaAsc") {
            $getQuery =  "SELECT * FROM `media` ORDER BY title ASC LIMIT " . $initial_page . ',' . $limit;
        } else if ($_GET['order'] == "alphaDesc") {
            $getQuery = "SELECT * FROM `media` ORDER BY title DESC LIMIT " . $initial_page . ',' . $limit;
        } else if ($_GET['order'] == "idAsc") {
            $getQuery = "SELECT * FROM `media` ORDER BY id ASC LIMIT " . $initial_page . ',' . $limit;
        } else if ($_GET['order'] == "ratingAsc") {
            $getQuery = "SELECT * FROM `media` ORDER BY rating DESC LIMIT " . $initial_page . ',' . $limit;
        }
    } else {
        $getQuery = "SELECT * FROM `media` ORDER BY id DESC LIMIT " . $initial_page . ',' . $limit;
    }

    // Run the query
    $result = mysqli_query($conn, $getQuery);
    while ($row = mysqli_fetch_assoc($result)) {
        $type = get_media_type($row['type']);
        $category = get_media_category($row['category']);
        echo    '<div class="col-lg-3">
                    <div class="cg-item">
                        <div class="cg-pic set-bg" data-setbg="img/' . $type . '/' . $category . '/' . $row['img_url'] . '">
                            <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                        </div>
                        <div class="cg-text">
                            <h5><a href="single.php?id=' . $row['id'] . '">' . $row["title"] . '</a></h5>
                            <ul>
                                <li>by <span>Admin</span></li>
                                <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                            </ul>
                        </div>
                    </div>
                </div>';
    }
    mysqli_close($conn);


    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "all-media.php?page=" . $page_number;
        if (isset($_GET['order'])) {
            $href .= "&order=" . $_GET['order'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
}

// ---------------------------------------------------------- REMAKE -------------------------------------------------
function fetch_mw_post()
{
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM  `media` ORDER BY id DESC LIMIT 5";
    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) :
        $type = get_media_type($row['type']);
        $category = get_media_category($row['category']);
        $img_url = "img/" . $type . "/" . $category . "/" . $row['img_url'];
        echo '       
        <div class="mw-post-item">
            <a href="single.php?id=' . $row['id'] . '">
                <div class="mw-pic">
                    <img src="' . $img_url . '" alt="">
                </div>
                <div class="mw-text">
                    <h6>' . $row["title"] . '</h6>
                    <ul>
                        <li>Released Date</li>
                        <li><i class="fa fa-clock-o"></i>' . $row["released_dt"] . '</li>
                    </ul>
                </div>
            </a>
        </div>';
    endwhile;
    mysqli_close($conn);
}

function get_anime_series_num()
{
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('series');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    echo $total_rows;
    mysqli_close($conn);
}
function get_anime_series()
{
    // variable to store number of rows per page
    $limit = 12;
    //Connect to database
    include('config/_dbconnect.php');
    // Run MySQL Query
    $type_id = get_type_id('anime');
    $category_id = get_category_id('series');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);

    // update the active page number
    if (!isset($_GET['page'])) {
        $page_number = 1;
    } else {
        $page_number = $_GET['page'];
    }

    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;

    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);

    // Run the query
    $result = mysqli_query($conn, $getQuery);

    while ($row = mysqli_fetch_assoc($result)) {
        echo    '<div class="col-lg-3">
                    <a href="single.php?id=' . $row['id'] . '">
                        <div class="cg-item">
                            <div class="cg-pic set-bg" data-setbg="img/anime/series/' . $row["img_url"] . '">
                                <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                            </div>
                            <div class="cg-text">
                                <h5>' . $row["title"] . '</h5>
                                <ul>
                                    <li>by <span>Admin</span></li>
                                    <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                </div>';
    }
    mysqli_close($conn);

    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "anime-series.php?page=" . $page_number;
        if (isset($_GET['order'])) {
            $href .= "&order=" . $_GET['order'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
}



function get_anime_movies_num()
{
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('movie');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    echo $total_rows;
    mysqli_close($conn);
}

function get_anime_movies()
{
    // variable to store number of rows per page
    $limit = 12;
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('anime');
    $category_id = get_category_id('movie');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);
    // update the active page number
    if (!isset($_GET['page'])) {
        $page_number = 1;
    } else {
        $page_number = $_GET['page'];
    }
    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;

    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);

    // Run the query
    $result = mysqli_query($conn, $getQuery);
    while ($row = mysqli_fetch_assoc($result)) {
        echo    '<div class="col-lg-3">
                    <a href="single.php?id=' . $row['id'] . '">
                        <div class="cg-item">
                            <div class="cg-pic set-bg" data-setbg="img/anime/movie/' . $row["img_url"] . '">
                                <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                            </div>
                            <div class="cg-text">
                                <h5>' . $row["title"] . '</h5>
                                <ul>
                                    <li>by <span>Admin</span></li>
                                    <li><i class="fa fa-clock-o"></i>' .date("d-M-Y", strtotime($row["added_dt"]))  . '</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                </div>';
    }
    mysqli_close($conn);

    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "anime-movies.php?page=" . $page_number;
        if (isset($_GET['order'])) {
            $href .= "&order=" . $_GET['order'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
}

function get_live_movies_num()
{
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('movie');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    echo $total_rows;
}

function get_live_movies()
{
    // variable to store number of rows per page
    $limit = 12;
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('movie');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);
    // update the active page number
    if (!isset($_GET['page'])) {
        $page_number = 1;
    } else {
        $page_number = $_GET['page'];
    }
    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;

    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);

    // Run the query
    $result = mysqli_query($conn, $getQuery);
    while ($row = mysqli_fetch_assoc($result)) {
        echo    '<div class="col-lg-3">
                    <a href="single.php?id=' . $row['id'] . '">
                        <div class="cg-item">
                            <div class="cg-pic set-bg" data-setbg="img/live/movie/' . $row["img_url"] . '">
                                <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                            </div>
                            <div class="cg-text">
                                <h5>' . $row["title"] . '</h5>
                                <ul>
                                    <li>by <span>Admin</span></li>
                                    <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                </div>';
    }
    mysqli_close($conn);
    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "live-movies.php?page=" . $page_number;
        if (isset($_GET['order'])) {
            $href .= "&order=" . $_GET['order'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
}

function get_live_series_num()
{
    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('series');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    echo $total_rows;
    mysqli_close($conn);
}

function get_live_series()
{
    // variable to store number of rows per page
    $limit = 12;

    //Connect to database
    include('config/_dbconnect.php');
    $type_id = get_type_id('live');
    $category_id = get_category_id('series');
    $sql = "SELECT * FROM `media` WHERE `category`= {$category_id} AND `type`= {$type_id}";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);

    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);

    // update the active page number
    if (!isset($_GET['page'])) {

        $page_number = 1;
    } else {

        $page_number = $_GET['page'];
    }

    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;


    $getQuery = get_query($category_id, $type_id, $initial_page, $limit);

    // Run the query
    $result = mysqli_query($conn, $getQuery);

    while ($row = mysqli_fetch_assoc($result)) {
        echo    '<div class="col-lg-3">
                    <a href="single.php?id=' . $row['id'] . '">
                        <div class="cg-item">
                            <div class="cg-pic set-bg" data-setbg="img/live/series/' . $row["img_url"] . '">
                                <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                            </div>
                            <div class="cg-text">
                                <h5>' . $row["title"] . '</h5>
                                <ul>
                                    <li>by <span>Admin</span></li>
                                    <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                </div>';
    }
    mysqli_close($conn);

    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "live-series.php?page=" . $page_number;
        if (isset($_GET['order'])) {
            $href .= "&order=" . $_GET['order'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
}

function get_media_sort($alphabet)
{
    // variable to store number of rows per page
    $limit = 12;
    //Connect to database
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'";
    $result = mysqli_query($conn, $sql);
    $total_rows = mysqli_num_rows($result);
    // get the required number of pages
    $total_pages = ceil($total_rows / $limit);
    // update the active page number
    if (!isset($_GET['page'])) {
        $page_number = 1;
    } else {
        $page_number = $_GET['page'];
    }
    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;
    // get data of selected rows per page
    $getQuery = "SELECT * FROM `media` WHERE LEFT(title,1)='" . $alphabet . "'ORDER BY id DESC LIMIT " . $initial_page . ',' . $limit;
    // Run the query

    $result = mysqli_query($conn, $getQuery);
    while ($row = mysqli_fetch_assoc($result)) {
        $media_type = get_media_type($row['type']);
        $media_category = get_media_category($row['category']);
        echo    '<div class="col-lg-3">
                    <a href="single.php?id=' . $row['id'] . '">
                        <div class="cg-item">
                            <div class="cg-pic set-bg" data-setbg="img/' . $media_type . '/' . $media_category . '/' . $row["img_url"] . '">
                                <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                            </div>
                            <div class="cg-text">
                                <h5>' . $row["title"] . '</h5>
                                <ul>
                                    <li>by <span>Admin</span></li>
                                    <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                </div>';
    }
    mysqli_close($conn);

    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';

    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {

        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "alpha-sort.php?alpha=' . $alphabet . '&page=' . $page_number . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "alpha-sort.php?alpha=' . $alphabet . '&page=' . $page_number . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
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

function get_genre($id){
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['name'];
    mysqli_close($conn);
}

function get_lang($id){
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `lang` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row['language'];
    mysqli_close($conn);
}

function get_single_cast($id){
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `casts` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    return $row;
    mysqli_close($conn);
}

function get_all_genres(){
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre`";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $row;
    mysqli_close($conn);
}

function get_single_media($id){
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `media` WHERE id={$id}";
    $result = mysqli_query($conn, $sql);;
    while ($row = mysqli_fetch_assoc($result)) {
        $type = get_media_type($row['type']);
        $category = get_media_category($row['category']);
        echo    '<div class="col-lg-3">
                    <div class="cg-item">
                        <div class="cg-pic set-bg" data-setbg="img/' . $type . '/' . $category . '/' . $row['img_url'] . '">
                            <div class="label"><span>Rating : ' . $row["rating"] . ' / 10</span></div>
                        </div>
                        <div class="cg-text">
                            <h5><a href="single.php?id=' . $row['id'] . '">' . $row["title"] . '</a></h5>
                            <ul>
                                <li>by <span>Admin</span></li>
                                <li><i class="fa fa-clock-o"></i>' . $row["added_dt"] . '</li>
                            </ul>
                        </div>
                    </div>
                </div>';
    }
    mysqli_close($conn);
}

function get_genre_sort($name){
    $media_ids = array();
    include('config/_dbconnect.php');
    $sql = "SELECT * FROM `genre` WHERE name LIKE '$name'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $genre_this_id = $row['id']; 
    $sql = "SELECT * FROM `media`";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_fetch_all($result,MYSQLI_ASSOC);
    $i = 0;
    foreach($rows as $row):
        $genre_ids = array();
        $genre_ids = $row['genre'];
        $genre_ids = explode(",",$genre_ids);
        if (in_array($genre_this_id, $genre_ids))
        {
            $media_ids[$i]=$row["id"];
            $i++;
        }
    endforeach;
    // variable to store number of rows per page
	$limit = 12;
    //Get total number of media
        $total_media = sizeof($media_ids);
    //Count total number of pages
        $total_pages = ceil($total_media/$limit);
    // update the active page number
        if (!isset($_GET['page'])) {
                $page_number = 1;
            } else {
                $page_number = $_GET['page'];
           }
    // get the initial page number
    $initial_page = ($page_number - 1) * $limit;
    $media_ids= array_slice($media_ids,$initial_page,$limit);
    foreach($media_ids as $id){
        get_single_media($id);
    }

    // ---------------------  PAGINATION  --------------------------------------
    $current_page_number = $page_number;
    // show page number with link
    echo '</div><div class="pagination-item">';
    for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
        $href = "genre-sort.php?page=" . $page_number;
        if (isset($_GET['genre'])) {
            $href .= "&genre=" . $_GET['genre'];
        }
        if ($page_number == $current_page_number) {
            echo '<a class="text-secondary" href = "' . $href . '"><span>' . $page_number . '</span></a>';
        } else {
            echo '<a href = "' . $href . '"><span>' . $page_number . '</span></a>';
        }
    }
    echo '</div>';
    mysqli_close($conn);
}
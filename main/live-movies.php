<!DOCTYPE html>
<html lang="en">
<?php include("./partials/head.php"); ?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <?php include("./partials/hamberger-menu.php"); ?>

    <?php include("./partials/header.php"); ?>

    <!-- Categories Grid Section Begin -->

    <section class="categories-grid-section spad">

        <div class="container" id="live-movies">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title">
                        <a href="live-movies.php">Live Movies (<?= get_live_movies_num(); ?>)</a>

                    </div>
                    <h6 class="my-3 text-white">Sort by:
                        <a href="live-movies.php?order=ratingAsc" class="ml-4 mr-4">Rating</a>
                        <a href="live-movies.php?order=idAsc" class="mr-4">Oldest</a>
                        <a href="live-movies.php?order=alphaAsc" class="mr-4">Aphabetically Ascending</a>
                        <a href="live-movies.php?order=alphaDesc">Aphabetically Descending</a>
                    </h6>
                </div>
                <div class="col-lg-12 p-0">
                    <div class="row">
                        <?php 
                            // variable to store number of rows per page
                            $limit = 12;
                            include('config/_dbconnect.php');
                            $total_rows = get_live_movies_num();
                            // get the required number of pages
                            $total_pages = ceil($total_rows / $limit);
                            // update the active page number
                            if (!isset($_GET['page'])) {
                                $page_number = 1;
                            } else {
                                $page_number = $_GET['page'];
                            }
                            $current_page_number = $page_number;
                            // get the initial page number
                            $initial_page = ($page_number - 1) * $limit;
                            $rows = get_live_movies($initial_page, $limit);
                            foreach($rows as $row):
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
                            endforeach;
    // ---------------------  PAGINATION  --------------------------------------
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
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Grid Section End -->
    
    <?php include("partials/footer.php"); ?>
    <?php include("partials/search-model.php"); ?>
    <?php include("partials/scripts.php"); ?>
</body>

</html>
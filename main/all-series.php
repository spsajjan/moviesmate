<!DOCTYPE html>
<html lang="en">
<?php include("./inc/head.php"); ?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <?php include("./inc/hamberger-menu.php"); ?>
    <?php include("./inc/header.php"); ?>
    <!-- Categories Grid Section Begin -->
    <section class="categories-grid-section spad">
        <div class="container" id="anime-movies">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title">
                        <a href="all-series.php"> All Series (<?= $dbData->get_series_num(); ?>)</a>
                    </div>
                    <h6 class="my-3 text-white">Sort by:
                        <a href="all-movies.php?order=ratingAsc" class="ml-4 mr-4">Rating</a>
                        <a href="all-movies.php?order=idAsc" class="mr-4">Oldest</a>
                        <a href="all-movies.php?order=alphaAsc" class="mr-4">Aphabetically Ascending</a>
                        <a href="all-movies.php?order=alphaDesc">Aphabetically Descending</a>
                    </h6>
                </div>
                <div class="col-lg-12 p-0">
                    <div class="row">
                        <?php
                        // variable to store number of rows per page
                        $limit = 12;
                        $total_rows = $dbData->get_series_num();
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

                        if (isset($_GET['order'])) {
                            if ($_GET['order'] == "alphaAsc") {
                                $rows = $dbData->get_series("title", "ASC", $initial_page, $limit);
                            } else if ($_GET['order'] == "alphaDesc") {
                                $rows = $dbData->get_series("title", "DESC", $initial_page, $limit);
                            } else if ($_GET['order'] == "idAsc") {
                                $rows = $dbData->get_series("id", "ASC", $initial_page, $limit);
                            } else if ($_GET['order'] == "ratingAsc") {
                                $rows = $dbData->get_series("rating", "DESC", $initial_page, $limit);
                            }
                        } else {
                            $rows = $dbData->get_series("released_dt", "DESC", $initial_page, $limit);
                        }
                        foreach ($rows as $row) :
                            $type = $dbData->get_media_type($row['type']);
                            $category = $dbData->get_media_category($row['category']);
                            $partData->single_media($row, $type, $category);
                        endforeach;
                        ?>
                    </div>
                    <!-- PAGINATION STARTS -->
                    <div class="pagination-item text-center">

                        <?php
                        $active_page = "";
                        $start = ($page_number - 4);
                        //-- Handle start error of negative page number
                        if ($start <= 0) {
                            $start = 1;
                        }
                        //-- End of pages is current page number + 7 pages
                        $end = ($page_number + 7);
                        //-- Handle end pages error if end pages greater than actual pages
                        if ($end > $total_pages) {
                            $end = $total_pages;
                        }

                        //-- If page number is greater than 2 the show first page button  
                        if ($page_number >= 2) {
                            $href = "all-series.php?page=$start";
                        ?>
                            <a href="all-series.php?page=1">
                                <span class="<?= $active_page ?>">First</span>
                            </a>
                            <a href="<?= $href ?>">
                                <span class="<?= $active_page ?>">&laquo;</span>
                            </a>
                        <?php
                        }
                        for ($i = $start; $i <= $end; $i++) :
                            if ($i == $page_number) {
                                $active_page = "text-secondary";
                            } else {
                                $active_page = "";
                            }
                            //-- Set href
                            $href = "all-series.php?page=" . $i;
                            if (isset($_GET['order'])) : $href .= "&order=" . $_GET['order'];
                            endif;
                        ?>
                            <a class="<?= $active_page ?>" href="<?= $href ?>"><span><?= $i ?></span></a>
                        <?php
                        endfor;
                        //-- If page number is less than pages then show last pages option
                        if ($page_number < $total_pages) {
                        ?>
                            <a href="<?= $href ?>">
                                <span class="<?= $active_page ?>">&raquo;</a>
                            </a>
                            <a href="all-series.php?page=<?= $total_pages ?>">
                                <span class="<?= $active_page ?>">Last</a>
                            </a>
                        <?php }
                        ?>
                    </div>
                    <?php
                    if ($total_pages > 1) {
                    ?><p class="text-center mt-2"><?= $page_number ?>&nbsp;of&nbsp;<?= $total_pages ?>&nbsp;Pages</p>
                    <?php } ?>
                    <!-- PAGINATION ENDS -->
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Categories Grid Section End -->
    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>
</body>

</html>
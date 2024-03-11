<!DOCTYPE html>
<html lang="en">
<?php
include("./inc/head.php");
$genre = $_GET['genre'];
?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <?php include("./inc/hamberger-menu.php"); ?>
    <?php include("./inc/header.php"); ?>
    <!-- Categories Grid Section Begin -->
    <section class="categories-grid-section spad">
        <div class="container" id="anime-series">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title">
                        Sort By Genre: <?php echo $genre; ?>
                    </div>
                </div>
                <div class="col-lg-12 p-0">
                    <div class="row">
                        <?php
                        $page_number = 1;
                        $total_pages = 0;
                        $media_ids = $dbData->get_media_with_genre($genre);
                        if ($media_ids != null) :
                            // variable to store number of rows per page
                            $limit = 12;
                            //Get total number of media
                            $total_media = sizeof($media_ids);
                            //Count total number of pages
                            $total_pages = ceil($total_media / $limit);
                            // update the active page number
                            if (isset($_GET['page'])) :
                                $page_number = $_GET['page'];
                            endif;

                            $current_page_number = $page_number;
                            // get the initial page number
                            $initial_page = ($page_number - 1) * $limit;
                            $media_ids = array_slice($media_ids, $initial_page, $limit);
                            $rows = $dbData->get_media_array($media_ids);
                            foreach ($rows as $row) :
                                $type = $dbData->get_media_type($row['type']);
                                $category = $dbData->get_media_category($row['category']);
                                $partData->single_media($row, $type, $category);
                            endforeach; ?>
                    </div>
                <?php endif; ?>
                <!-- PAGINATION STARTS -->
                <div class="pagination-item text-center">

                    <?php
                    $active_page = "";
                    $genre = "";
                    if (isset($_GET['genre'])) {
                        $genre = $_GET['genre'];
                    }
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
                        $href = "genre-sort.php?page=$start&genre=$genre";
                    ?>
                        <a href="genre-sort.php?page=1&genre=<?= $genre ?>">
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
                        $href = "genre-sort.php?page=" . $i;
                        if (isset($_GET['order'])) : $href .= "&order=" . $_GET['order'];
                        endif;
                    ?>
                        <a class="<?= $active_page ?>" href="<?= $href ?>&genre=<?= $genre ?>"><span><?= $i ?></span></a>
                    <?php
                    endfor;
                    //-- If page number is less than pages then show last pages option
                    if ($page_number < $total_pages) {
                    ?>
                        <a href="<?= $href ?>">
                            <span class="<?= $active_page ?>">&raquo;</a>
                        </a>
                        <a href="genre-sort.php?page=<?= $total_pages ?>&genre=<?= $genre ?>">
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
    </section>
    <!-- Categories Grid Section End -->
    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>
</body>

</html>
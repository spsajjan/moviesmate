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
        <div class="container" id="anime-movies">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title">
                        <a href="all-media.php"> All Media (<?= get_media_num(); ?>)</a>
                    </div>
                    <h6 class="my-3 text-white">Sort by:
                        <a href="all-media.php?order=ratingAsc" class="ml-4 mr-4">Rating</a>
                        <a href="all-media.php?order=idAsc" class="mr-4">Oldest</a>
                        <a href="all-media.php?order=alphaAsc" class="mr-4">Aphabetically Ascending</a>
                        <a href="all-media.php?order=alphaDesc">Aphabetically Descending</a>
                    </h6>
                </div>
                <div class="col-lg-12 p-0">
                    <div class="row">
            <?php
                // variable to store number of rows per page
                $limit = 12;
                $total_rows = get_media_num();
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
                        $rows = get_spec_media("title","ASC",$initial_page,$limit);
                    } else if ($_GET['order'] == "alphaDesc") {
                        $rows = get_spec_media("title","DESC",$initial_page,$limit);
                    } else if ($_GET['order'] == "idAsc") {
                        $rows = get_spec_media("id","ASC",$initial_page,$limit);
                    } else if ($_GET['order'] == "ratingAsc") {
                        $rows = get_spec_media("id","DESC",$initial_page,$limit);
                    }
                } else {
                    $rows = get_spec_media("id","DESC",$initial_page,$limit);
                }
                foreach ($rows as $row):
                    $type = get_media_type($row['type']);
                    $category = get_media_category($row['category']);
                    ?>
                        <a href="single.php?id=<?=$row['id']?>">
                            <div class="col-lg-3">
                                <div class="cg-item">
                                    <div class="cg-pic set-bg" data-setbg="img/<?=$type?>/<?=$category?>/<?=$row['img_url']?>">
                                        <div class="label"><span>Rating : <?=$row['rating']?> / 10</span></div>
                                    </div>
                                        <div class="cg-text">
                                            <h5><a href="single.php?id=<?=$row['id']?>"><?= $row["title"]?></a></h5>
                                            <ul>
                                                <li>by <span>Admin</span></li>
                                                <li><i class="fa fa-clock-o"></i><?=$row["added_dt"]?></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </a>
                <?php 
                endforeach;
                ?>
                    </div>
                        <!-- PAGINATION -->
                        <div class="pagination-item">
                            <?php 
                                for ($page_number = 1; $page_number <= $total_pages; $page_number++):
                                    $href = "all-media.php?page=" . $page_number;
                                    if (isset($_GET['order'])): $href .= "&order=" . $_GET['order']; endif;
                                    if ($page_number == $current_page_number):
                            ?>
                                <a class="text-secondary" href = "<?=$href?>"><span><?= $page_number?></span></a>
                                <?php else: ?>
                                <a href = "<?=$href?>"><span><?=$page_number?></span></a>
                                <?php
                                    endif;
                                endfor;
                                ?>
                        </div>
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
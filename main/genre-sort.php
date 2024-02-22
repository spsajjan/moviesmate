<!DOCTYPE html>
<html lang="en">
<?php
include("./partials/head.php");
$genre = $_GET['genre'];
?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <?php include("./partials/hamberger-menu.php"); ?>
    <?php include("./partials/header.php"); ?>
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
                            $media_ids = get_media_with_genre($genre);
                            // variable to store number of rows per page
                            $limit = 12;
                            //Get total number of media
                            $total_media = sizeof($media_ids);
                            //Count total number of pages
                            $total_pages = ceil($total_media/$limit);
                            // update the active page number
                            if (!isset($_GET['page'])) : $page_number = 1; else: $page_number = $_GET['page']; endif;
                            $current_page_number = $page_number;
                            // get the initial page number
                            $initial_page = ($page_number - 1) * $limit;
                            $media_ids= array_slice($media_ids,$initial_page,$limit);
                            $rows = get_media_array($media_ids);
                            foreach($rows as $row):
                                $type = get_media_type($row['type']);
                                $category = get_media_category($row['category']);
                            ?>
                            <div class="col-lg-3">
                                <div class="cg-item">
                                    <div class="cg-pic set-bg" data-setbg="img/<?=$type?>/<?=$category?>/<?=$row['img_url']?>">
                                        <div class="label"><span>Rating : <?=$row["rating"]?> / 10</span></div>
                                    </div>
                                    <div class="cg-text">
                                        <h5><a href="single.php?id=<?=$row['id']?>"><?=$row["title"]?></a></h5>
                                        <ul>
                                            <li>by <span>Admin</span></li>
                                            <li><i class="fa fa-clock-o"></i><?=$row["added_dt"]?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        </div>
                        <div class="pagination-item">
                        <?php
                        // ---------------------  PAGINATION  --------------------------------------
                        for ($page_number = 1; $page_number <= $total_pages; $page_number++) {
                            $href = "genre-sort.php?page=" . $page_number;
                            if (isset($_GET['genre'])) {$href .= "&genre=" . $_GET['genre'];}
                            if ($page_number == $current_page_number) {
                            ?>
                                <a class="text-secondary" href = "<?=$href?>"><span><?=$page_number?></span></a>
                            <?php } else { ?>
                                <a href = "<?=$href?>"><span><?=$page_number?></span></a>
                            <?php }
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
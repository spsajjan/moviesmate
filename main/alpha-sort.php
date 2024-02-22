<!DOCTYPE html>
<html lang="en">
<?php
include("./partials/head.php");
$alphabet = $_GET['alpha'];
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
                        Sort By Alphabet: <?php echo $alphabet; ?>
                    </div>
                </div>
                <div class="col-lg-12 p-0">
                    <div class="row">
                        <?php
                            // variable to store number of rows per page
                            $limit = 12;
                            $total_rows = get_media_sort_num($alphabet);
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
                            $rows = get_media_sort($alphabet,$initial_page,$limit);
                            foreach($rows as $row):
                                $media_type = get_media_type($row['type']);
                                $media_category = get_media_category($row['category']);
                            ?>
                            <div class="col-lg-3">
                                <a href="single.php?id=<?=$row['id']?>">
                                    <div class="cg-item">
                                        <div class="cg-pic set-bg" data-setbg="img/<?=$media_type?>/<?=$media_category?>/<?=$row["img_url"]?>">
                                            <div class="label"><span>Rating : <?=$row["rating"]?> / 10</span></div>
                                        </div>
                                        <div class="cg-text">
                                            <h5><?=$row["title"]?></h5>
                                            <ul>
                                                <li>by <span>Admin</span></li>
                                                <li><i class="fa fa-clock-o"></i><?=$row["added_dt"]?></li>
                                            </ul>
                                        </div>
                                    </div>
                                </a>
                            </div>
                           <?php endforeach; ?>   
                        </div>

                        <!-- PAGINATION -->
                        <div class="pagination-item">
                        <?php
                        for ($page_number = 1; $page_number <= $total_pages; $page_number++) {

                            if ($page_number == $current_page_number) {
                                ?><a class="text-secondary" href = "alpha-sort.php?alpha=<?=$alphabet?>'&page=<?=$page_number?>"><span><?=$page_number?></span></a>
                            <?php } else {
                                ?><a href = "alpha-sort.php?alpha=<?=$alphabet?>'&page=<?=$page_number?>"><span><?=$page_number?></span></a>
                            <?php }
                        }?>
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
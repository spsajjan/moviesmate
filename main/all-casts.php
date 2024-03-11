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
    <div class="container-fluid text-white bg-dark">
        <div class="container pt-5">
            <div class="title">
                <a href="all-casts.php">Casts (<?= $dbData->get_casts_num() ?>)</a>
            </div>
            <div class="row">
                <?php
                $limit = 24;
                $total_rows = $dbData->get_casts_num();
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

                $casts = $dbData->get_spec_casts($initial_page, $limit);
                foreach ($casts as $cast) :
                ?>
                    <div class="col-md-2">
                        <img src="./img/casts/<?= $cast['img_url'] ?>" alt="" class="img-fluid">
                        <p class="text-uppercase"><?= $cast['first_name'] . " " . $cast['last_name'] ?></p>
                    </div>
                <?php endforeach;
                $current_page_number = $page_number;
                // show page number with link
                ?>
            </div>
            <div class="container p-5">
                <div class="pagination-item">
                    <?php
                    for ($page_number = 1; $page_number <= $total_pages; $page_number++) :
                        if ($page_number == $current_page_number) :
                    ?>
                            <a href="all-casts.php?page=<?= $page_number ?>"><span class="text-secondary"><?= $page_number ?></span></a>
                        <?php else : ?>
                            <a href="all-casts.php?page=<?= $page_number ?>"><span><?= $page_number ?></span></a>
                        <?php endif; ?>
                    <?php endfor; ?>
                </div>
            </div>

        </div>
    </div>
    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>
</body>

</html>
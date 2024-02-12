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
                        get_media_sort($alphabet);
                        ?>
                    </div>
                </div>
            </div>
    </section>
    <!-- Categories Grid Section End -->

    <?php include("partials/search-model.php"); ?>

    <?php include("partials/scripts.php"); ?>
</body>

</html>
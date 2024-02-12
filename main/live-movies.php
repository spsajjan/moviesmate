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
                        <a href="live-movies.php">Live Movies (<?php get_live_movies_num(); ?>)</a>

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
                        <?php $row = get_live_movies(); ?>
                    </div>
                </div>
            </div>
    </section>
    <!-- Categories Grid Section End -->

    <?php include("partials/search-model.php"); ?>
    <?php include("partials/scripts.php"); ?>
</body>

</html>
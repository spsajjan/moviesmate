<!DOCTYPE html>
<html lang="en">
<?php
include("./inc/head.php");
$id = $_GET['id'];
?>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <?php include("./inc/hamberger-menu.php"); ?>

    <?php include("./inc/header.php"); ?>

    <?php
    $row = $dbData->get_single_media($id);
    $rating_pts = $row['rating'] * 10;
    $type = $dbData->get_media_type($row['type']);
    $category = $dbData->get_media_category($row['category']);
    //-- Get genre names
    $genre = $row['genre'];
    $genres = explode(",", $genre);
    $genre_list = "";
    foreach ($genres as $genre) {
        $genre_list .= '<span class="tag">' . ucfirst($dbData->get_genre($genre)) . '</span>';
    }
    $language = $dbData->get_lang($row['lang']);
    ?>
    <section class="section spad">
        <div class="container">
            <div class="title"><?= $row['title'] ?></div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <img src="../main/img/<?= $type ?>/<?= $category ?>/<?= $row['img_url'] ?>" alt="" class="post-img">
                </div>
                <div class="col-md-6">
                    <div class="rating-item">
                        <div class="rating-circle">
                            <div class="loader-circle-wrap">
                                <div class="loader-circle">
                                    <span class="circle-progress-1" data-cpid="id-1" data-cpvalue="<?= $rating_pts ?>" data-cpcolor="#c20000">
                                        <div class="progress-value"></div>
                                    </span>
                                    <div class="rating-number"><?= $row['rating'] ?>.0</div>
                                </div>
                            </div>
                        </div>
                        <p class="rating-text-custom">Rating</p>
                    </div>
                    <p class="h3"> <span class="text-theme">Category : </span> <?= ucfirst($category) ?></p>
                    <p class="h3"> <span class="text-theme">Type : </span> <?= ucfirst($type) ?></p>
                    <p class="h3"> <span class="text-theme">Released Year : </span> <?= $row['released_dt'] ?></p>
                    <p class="h3"> <span class="text-theme">Genre : </span><?= $genre_list ?></p>
                    <p class="h3"> <span class="text-theme">Language : </span><?= ucfirst($language) ?></p>
                </div>
            </div>
            <?php if (!empty($row['storyline'])) : ?>
                <div class="title2">Story Line</div>
                <div class="storyline">
                    <?= $row['storyline']; ?>
                </div>
            <?php endif; ?>
            <?php if (!empty($row['plot'])) : ?>
                <div class="title2">Plot</div>
                <div class="plot">
                    <?= $row['plot']; ?>
                </div>
            <?php endif; ?>
            <?php if (!empty($row['content'])) : ?>
                <div class="title2">Story</div>
                <div class="content">
                    <?= $row['content']; ?>
                </div>
            <?php endif; ?>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                Duis aute irure Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                et dolore magna aliqua accusantium doloremque laudantium.
            </p>

            <?php
            if (!empty($row['casts'])) {
            ?>
                <div class="title2">Top Casts</div>
                <div class="row align-items-end">
                    <?php
                    //-- Get genre names
                    $casts = $row['casts'];
                    $casts = explode(",", $casts);
                    // var_dump($casts);

                    foreach ($casts as $cast) {
                        $cast = $dbData->get_single_cast($cast);
                    ?>

                        <div class="col-2 p-3">
                            <img src="./img/casts/<?= $cast['img_url'] ?>" alt="Emily Rudd">
                            <p><?= ucfirst($cast['first_name']) . " " . ucfirst($cast['last_name']) ?></p>
                        </div>
                    <?php
                    }
                    ?>
                </div>
        </div>
    <?php
            }
    ?>

    </div>

    </section>

    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>

</body>

</html>
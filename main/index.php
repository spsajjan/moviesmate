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


    <section class="sort-section section">

        <div class="container">
            <div class="title">
                <a href="all-media.php">All Media (<?= $dbData->get_media_num(); ?>) ></a>
            </div>
            <div class="title">Sort</div>
            <p class="mr-3">Type :- </p>
            <div class="row">
                <div class="col"><a href="all-movies.php">All Movies (<?= $dbData->get_movies_num(); ?>)</a></div>
                <div class="col"><a href="all-series.php">All Series (<?= $dbData->get_series_num(); ?>)</a></div>
            </div>
            <p class="mr-3">Year :- </p>
            <div class="row">
                <?php
                $rows = $dbData->get_years();
                foreach ($rows as $row) :
                ?>
                    <div class="col-1"><a href="media-year.php?year=<?= $row['years'] ?>"><?= $row['years']; ?> (<?= $dbData->get_media_year_num($row['years']) ?>)</a></div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <section class="alpha-section">
        <div class="container" id="anime-series">
            <div class="title">Sort by Alphabet</div>
            <div>
                <?php
                $alphabets = [
                    "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
                    "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
                ];
                foreach ($alphabets as $alphabet) :
                ?>
                    <a href="alpha-sort.php?alpha=<?= $alphabet ?>"><span class="alpha-item"><?= ucfirst($alphabet) ?></span></a>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <section class="genre-section section">
        <div class="container" id="choose_genre">
            <div class="title">Sort by Genre (<?= $dbData->get_genre_num() ?>)</div>
            <div class="row">
                <?php
                $genres = $dbData->get_genres();
                foreach ($genres as $genre) :
                ?>
                    <div class="col-2">
                        <a href="genre-sort.php?genre=<?= $genre['name'] ?>">
                            <img style="height:100px;" src="./img/genres/<?= $genre['img_url']; ?>" />
                            <p class="text-white"><?= ucfirst($genre['name']); ?></p>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <section class="categories-grid-section spad">
        <div class="container">
            <div class="title">Sort by Categories</div>
            <div class="row">
                <div class="col-lg-12 p-0">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="cg-item">
                                <a href="anime-series.php">
                                    <div class="cg-pic set-bg" data-setbg="img/anime-girl-coffee.jpg">
                                        <div class="label"><span>Anime Series</span></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="cg-item">
                                <a href="anime-movies.php">
                                    <div class="cg-pic set-bg" data-setbg="img/anime-girl-coffee-table.jpg">
                                        <div class="label"><span>Anime Movies</span></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="cg-item">
                                <a href="live-movies.php">
                                    <div class="cg-pic set-bg" data-setbg="img/girl-beanie.jpg">
                                        <div class="label"><span>Live Movies</span></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="cg-item">
                                <a href="live-series.php">
                                    <div class="cg-pic set-bg" data-setbg="img/fbi-series.jpg">
                                        <div class="label"><span>Live Series</span></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cast-section section">
        <div class="container">
            <div class="title">
                <a href="all-casts.php">Casts (<?= $dbData->get_casts_num() ?>)</a>
            </div>
            <div class="row">
                <?php
                $result = $dbData->get_twelve_casts();
                foreach ($result as $row) :
                ?>
                    <div class="col-md-2">
                        <img src="./img/casts/<?= $row['img_url'] ?>" alt="" class="img-fluid">
                        <p class="text-uppercase"><?= $row['first_name'] . " " . $row['last_name'] ?></p>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>
</body>

</html>
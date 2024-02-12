<!-- Header Section Begin -->
<header class="header-section">
    <div class="ht-options">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-8">
                    <div class="ht-widget">
                        <ul>
                            <li class="signup-switch signup-open">
                                <a href="../admin/">
                                    <i class="fa fa-sign-out"></i>
                                    <span>Admin Panel</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-4">
                    <div class="ht-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-envelope-o"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="logo">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="./index.php"><img src="img/moviesmate-full-theme.png" height="60" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-options">
        <div class="container">
            <div class="humberger-menu humberger-open">
                <i class="fa fa-bars"></i>
            </div>
            <div class="nav-search search-switch">
                <i class="fa fa-search"></i>
            </div>
            <div class="nav-menu">
                <ul>
                    <li class="active"><a href="./index.php"><span>Home</span></a></li>
                    <li class="mega-menu"><a href="#"><span>Types <i class="fa fa-angle-down"></i></span></a>
                        <div class="megamenu-wrapper">
                            <ul class="mw-nav">
                                <li><a href="all-media.php"><span>All Media (<?= get_media_num(); ?>)</span></a></li>
                                <li><a href="anime-movies.php"><span>Anime Movies (<?php get_anime_movies_num(); ?>)</span></a></li>
                                <li><a href="anime-series.php"><span>Anime Series (<?php get_anime_series_num(); ?>)</span></a></li>
                                <li><a href="live-movies.php"><span>Live Movies (<?php get_live_movies_num(); ?>)</span></a></li>
                                <li><a href="live-series.php"><span>Live Series (<?php get_live_series_num(); ?>)</span></a></li>
                            </ul>
                            <div class="mw-post">
                                <?php fetch_mw_post(); ?>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#"><span>Links<i class="ml-2 fa fa-angle-down"></i></span></a>
                        <ul class="dropdown">
                            <li><a href="#">LINKS</a></li>
                            <li><a href="#">LINKS</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span>Link</span></a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- Header End -->
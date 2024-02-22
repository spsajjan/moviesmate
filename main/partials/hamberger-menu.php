    <!-- Humberger Menu Begin -->
    <div class="humberger-menu-overlay"></div>
    <div class="humberger-menu-wrapper">
        <div class="hw-logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="hw-menu mobile-menu">
            <ul>
                <li><a href="./index.php">Home</a></li>
                <li>Types <i class="fa fa-angle-down"></i>
                    <ul class="dropdown">
                        <li><a href="./all-media.php">All Media (<?= get_media_num(); ?>)</a></li>
                        <li><a href="./anime-movies.php">Anime Movies (<?= get_anime_movies_num(); ?>)</a></li>
                        <li><a href="./anime-series.php">Anime Series (<?= get_anime_series_num(); ?>)</a></li>
                        <li><a href="./live-movies.php">Live Movies (<?= get_live_movies_num(); ?>)</a></li>
                        <li><a href="./live-series.php">Live Series (<?= get_live_series_num(); ?>)</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="hw-copyright">
            Copyright © 2019 Colorlib Inc. All rights reserved
        </div>
        <div class="hw-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <div class="hw-insta-media">
            <div class="section-title">
                <h5 class="text-white">Instagram</h5>
            </div>
            <div class="insta-pic">
                <img src="img/instagram/ip-1.jpg" alt="">
                <img src="img/instagram/ip-2.jpg" alt="">
                <img src="img/instagram/ip-3.jpg" alt="">
                <img src="img/instagram/ip-4.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- Humberger Menu End -->
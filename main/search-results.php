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
    <?php
    $search_text = $_GET['searchTxt'];
    ?>
    <div class="container"><?= $search_text ?></div>
    <?php include("inc/footer.php"); ?>
    <?php include("inc/scripts.php"); ?>
    <?php include("inc/search-modal.php"); ?>
</body>

</html>
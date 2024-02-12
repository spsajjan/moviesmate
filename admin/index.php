<?php
include "./config/db_connect.php";
$page = "dashboard";
?>

<!DOCTYPE html>
<html lang="en">

<!DOCTYPE html>
<html lang="en">

<?php include "partials/head.php" ?>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <?php include "partials/preloader.php" ?>

    <?php include "partials/navbar.php" ?>

    <?php include "partials/sidebar.php" ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Dashboard</h1>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <div class="content">
        <div class="container-fluid px-5">

          <div class="row">
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-info">
                <div class="inner">
                  <h3>
                    <?php $sql = "SELECT * FROM `media`";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>

                  <p>Total Media's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-photo-film"></i>
                </div>
                <a href="view-media.php" class="small-box-footer">View Media's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->

            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-success">
                <div class="inner">
                  <h3>
                    <?php
                    $sql = "SELECT * FROM `genre`";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>

                  <p>Total Genre's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-bars-staggered"></i>
                </div>
                <a href="view-genre.php" class="small-box-footer">View Genre's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>
                  <?php $sql = "SELECT * FROM `casts`";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>

                  <p>Casts (Celebrities / Actors / Actresses)</p>
                </div>
                <div class="icon">
                  <i class="fa fa-user-plus"></i>
                </div>
                <a href="view-casts.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-danger">
                <div class="inner">
                  <h3>65</h3>
                  <p>Unique Visitors</p>
                </div>
                <div class="icon">
                  <i class="fa fa-chart-pie"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <p class="h3">Media Subcategories</p>
          <div class="row">
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <div class="inner">
                  <h3>
                    <?php
                    $sql = "SELECT * FROM `media` WHERE `category`='series' AND `type`='anime'";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>
                  <p>Anime Series Media's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-photo-film"></i>
                </div>
                <a href="view-media.php" class="small-box-footer">View Media's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-dark">
                <div class="inner">
                  <h3>
                    <?php
                    $sql = "SELECT * FROM `media` WHERE `category`='movie' AND `type`='anime'";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>

                  <p>Anime Movies Media's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-photo-film"></i>
                </div>
                <a href="view-media.php" class="small-box-footer">View Media's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-secondary">
                <div class="inner">
                  <h3>
                    <?php
                    $sql = "SELECT * FROM `media` WHERE `category`='movie' AND `type`='live'";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>

                  <p>Live Movies Media's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-photo-film"></i>
                </div>
                <a href="view-media.php" class="small-box-footer">View Media's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-primary">
                <div class="inner">
                  <h3>
                    <?php
                    $sql = "SELECT * FROM `media` WHERE `category`='series' AND `type`='live'";
                    if ($result = mysqli_query($conn, $sql)) {
                      $num = mysqli_num_rows($result);
                      echo $num;
                    }
                    ?>
                  </h3>
                  <p>Live Series Media's</p>
                </div>
                <div class="icon">
                  <i class="fa fa-photo-film"></i>
                </div>
                <a href="view-media.php" class="small-box-footer">View Media's <i class="ml-3 fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <div class="card card-primary card-outline">
            <div class="card-body">
              <h5 class="card-title">Media List</h5>

              <p class="card-text">
                Some quick example text to build on the card title and make up the bulk of the card's
                content.
              </p>
              <a href="#" class="card-link">Card link</a>
              <a href="#" class="card-link">Another link</a>
            </div>
          </div><!-- /.card -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <?php include "partials/control-sidebar.php"; ?>

    <?php include "partials/footer.php" ?>

  </div>
  <!-- ./wrapper -->

  <?php include "partials/scripts.php"; ?>

</body>

</html>
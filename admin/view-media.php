<?php
include "./config/db_connect.php";
include "./func/fetch_data.php";
$page = "view-media";
?>

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
              <h1 class="m-0">Media List</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Dashboard</a></li>
                <li class="breadcrumb-item active">Media List</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->

        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->
      <!-- Main content -->
      <div class="content pb-5">
        <div class="container">
          <div class="card card-primary card-outline">
            <div class="card-body">
              <a href="add-media.php" class="btn btn-primary">Add new media</a>
              <hr />
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Image</th>
                    <th>Title</th>
                    <th>Language</th>
                    <th>Type</th>
                    <th>Category</th>
                    <th>Genre</th>
                    <th>Rating</th>
                    <th>Released Date</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $i = 0;
                  $sql = "SELECT * FROM `media` ORDER BY `id` DESC";
                  $result = mysqli_query($conn, $sql);
                  while ($row = mysqli_fetch_assoc($result)) {
                    $i = $i + 1;
                    $type = $getData->get_media_type($row['type']);
                    $category = $getData->get_media_category($row['category']);
                    $img_url = "../main/img/" . $type . "/" . $category . "/" . $row['img_url'];
                  ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td><img src="<?= $img_url; ?>" alt="" style="height:200px"></td>
                      <td><?= strtoupper($row['title']) ?></td>
                      
                      <td>
                        <?php 
                          $lang = $getData->get_lang($row['lang']);
                          (is_null($lang) ? "$lang" : "Not Defined");
                          echo ucfirst($lang) 
                        ?>
                      </td>
                      <td><?= $type ?></td>
                      <td><?= $category ?></td>
                      <td>
                        <?php
                        $genre_ids = explode(",", $row['genre']);
                        foreach ($genre_ids as $genre_id) :
                          $sql_genre = "SELECT * FROM genre WHERE id='" . $genre_id . "'";
                          $result_genre = mysqli_query($conn, $sql_genre);
                          $row_genre = mysqli_fetch_assoc($result_genre);
                        ?>
                          <span class="badge badge-secondary p-1"><?= ucfirst($row_genre['name']); ?></span>
                        <?php endforeach; ?>
                      </td>
                      <td><?= $row['rating'] ?></td>
                      <td><?php
                            if(!empty($row['released_dt'])){
                              echo date("d-M-Y", strtotime($row['released_dt']));
                            }
                          ?>
                      </td>
                      <td class="d-flex flex-column">
                        <button type="button" class="btn btn-primary mb-2 edit-media" data-toggle="modal" data-target="#media-form" data-id="<?= $row['id'] ?>" data-image="<?= $img_url; ?>">
                          Edit
                        </button>
                        <button class="btn btn-danger delete_media" data-id="<?= $row['id'] ?>">Delete</button>
                      </td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
          </div><!-- /.card -->

        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <?php include "./func/custom-scripts.php"; ?>

    <?php include "partials/control-sidebar.php"; ?>

    <?php include "partials/footer.php"; ?>

  </div>
  <!-- ./wrapper -->


  <?php include "partials/scripts.php"; ?>

  <script>
    $(function() {
      $(".table").DataTable({
        dom: "<'row'<'col-sm-3'l><'col-sm-3'f><'col-sm-6'p>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'row'<'col-sm-5'i><'col-sm-7'p>>",
      });
    });

    function displayImg(input, _this) {
      if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = function(e) {
          $('#cimg').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    }


    $('.edit-media').click(function() {
      var id = $(this).attr("data-id");
      var url = "edit-media.php?id=" + id;
      $(location).attr('href', url);
    })

    $('.delete_media').click(function() {
      _conf("Are you sure to delete this media?", "delete_media", [$(this).attr('data-id')])
    })

    function delete_media($id) {
      $.ajax({
        url: 'func/ajax.php?action=delete_media',
        method: 'POST',
        data: {
          id: $id
        },
        success: function(resp) {
          if (resp == 1) {
            location.reload();
          }
        }
      })
    }
  </script>
</body>

</html>
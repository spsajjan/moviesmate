<?php
include "./config/db_connect.php";
include "./func/fetch_data.php";
$page = "view-casts";
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
              <h1 class="m-0">Casts List</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Dashboard</a></li>
                <li class="breadcrumb-item active">Casts List</li>
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
              <a href="add-cast.php" class="btn btn-primary">Add new Cast</a>
              <hr />
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>DOB</th>
                    <th>Gender</th>
                    <th>Height</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $i = 0;
                  $sql = "SELECT * FROM `casts` ORDER BY `id` DESC";
                  $result = mysqli_query($conn, $sql);
                  while ($row = mysqli_fetch_assoc($result)) {
                    $i = $i + 1;
                    $img_url = "../main/img/casts/" . $row['img_url'];
                  ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td><img src="<?= $img_url; ?>" alt="" style="height:200px"></td>
                      <td><?= strtoupper($row['first_name']." ".$row['last_name']) ?></td>
                      
                      <td><?= $row['dob'] ?></td>
                      <td><?= $row['gender'] ?></td>
                      <td><?= $row['height'] ?></td>
                      <td class="d-flex flex-column">
                        <button type="button" class="btn btn-primary mb-2 edit-cast" data-toggle="modal" data-target="#cast-form" data-id="<?= $row['id'] ?>" data-image="<?= $img_url; ?>">
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


    $('.edit-cast').click(function() {
      var id = $(this).attr("data-id");
      var url = "edit-cast.php?id=" + id;
      $(location).attr('href', url);
    })

    $('.delete_cast').click(function() {
      _conf("Are you sure to delete this cast?", "delete_cast", [$(this).attr('data-id')])
    })

    function delete_cast($id) {
      $.ajax({
        url: 'func/ajax.php?action=delete_cast',
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
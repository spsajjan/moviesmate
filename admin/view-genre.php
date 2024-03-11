<?php
$page = "view-genre";
?>

<!DOCTYPE html>
<html lang="en">

<?php include "inc/head.php" ?>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <?php include "inc/preloader.php" ?>

    <?php include "inc/navbar.php" ?>

    <?php include "inc/sidebar.php" ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Genre List</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Genre List</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->


      <!-- MODALS -->
      <div class="modal fade" id="genre-form">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Genre Form</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
              </button>
            </div>

            <form id="manage-genre" enctype="multipart/form-data">
              <input type="hidden" name="id" value="">
              <div class="modal-body">
                <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="form-group">
                  <label for="img">File input</label>
                  <div class="input-group">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="img" name="img" onchange="displayImg(this,$(this))">
                      <label class="custom-file-label" for="img">Choose file</label>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <img src="" alt="" id="cimg" style="height: 150px; margin: 20px 0px 0px 20px;">
                </div>
                <!-- /.card-body -->
                <div class="modal-footer justify-content-between">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
          </div>

        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- END MODALS -->


    <!-- Main content -->
    <div class="content">
      <div class="container-fluid pb-5">
        <div class="card card-primary card-outline">
          <div class="card-body">
            <button type="button" class="btn btn-primary new-genre" data-toggle="modal" data-target="#genre-form">Add New Genre</button>
            <hr />
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Image</th>
                  <th>Name</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $i = 0;
                $sql = "SELECT * FROM `genre` ORDER BY `id` DESC";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                  $i = $i + 1;
                ?>
                  <tr>
                    <td><?php echo $i ?></td>
                    <td><img src="../main/img/genres/<?php echo $row['img_url'] ?>" alt="" style="height:100px"></td>
                    <td><?php echo $row['name'] ?></td>
                    <td class="d-flex flex-column">
                      <button type="button" class="btn btn-primary mb-2 edit-genre" data-toggle="modal" data-target="#genre-form" data-id="<?php echo $row['id'] ?>" data-title="<?php echo $row['name'] ?>" data-image="../main/img/genres/<?php echo $row['img_url'] ?>">
                        Edit
                      </button>
                      <button class="btn btn-danger delete_genre" data-id="<?php echo $row['id'] ?>">Delete</button>
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

  <?php include "inc/control-sidebar.php"; ?>

  <?php include "inc/footer.php"; ?>

  </div>
  <!-- ./wrapper -->

  <?php include "inc/scripts.php"; ?>

  <script type="text/javascript">
    $(function() {
      $(".table").DataTable();
    });

    function _reset() {
      $('[name="id"]').val('');
      $('#manage-genre').get(0).reset();
    }

    $('.new-genre').click(function() {
      _reset();
      $('#cimg').attr('src', '');
    });

    $('.edit-genre').click(function() {
      let cat = $('#manage-genre')
      cat.get(0).reset()
      cat.find("[name='id']").val($(this).attr('data-id'))
      cat.find("[name='name']").val($(this).attr('data-title'))
      cat.find("#cimg").attr("src", $(this).attr('data-image'))
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

    $("#manage-genre").submit(function(e) {
      e.preventDefault()
      $.ajax({
        url: 'func/ajax.php?action=save_genre',
        method: "POST",
        mimeType: "multipart/form-data",
        processData: false,
        contentType: false,
        data: new FormData($(this)[0]),
        success: function(resp) {
          if (resp == 1) {
            $('#genre-form').modal('toggle');
            location.reload();
          } else {
            alert(resp);
          }
        }
      })
    })

    $('.delete_genre').click(function() {
      _conf("Are you sure to delete this genre?", "delete_genre", [$(this).attr('data-id')])
    })

    function delete_media($id) {
      $.ajax({
        url: 'func/ajax.php?action=delete_genre',
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
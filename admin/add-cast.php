<?php
include "./func/fetch_data.php";
$page = "add-new-cast";
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
              <h1 class="m-0">Add Cast</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Manage Cast</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->
      <!-- Main content -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <form id="add-cast" enctype="multipart/form-data">
                <input type="hidden" name="id" value="">
                <div class="card card-primary card-outline">
                  <div class="card-body">
                    <h5 class="card-title">Add Cast</h5>
                    <div class="card-text">
                      <div class="form-group">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control" id="first_name" name="first_name">
                      </div>
                      <div class="form-group">
                        <label for="last_name">Last Name</label>
                        <input type="text" class="form-control" id="last_name" name="last_name">
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
                        <img src="" alt="" id="cimg" style="height: 350px; padding: 10px;">
                      </div>
                      <div class="form-group">
                        <label for="dob">Date Of Birth</label>
                        <input type="date" class="form-control" name="dob" id="dob">
                      </div>
                      <div class="form-group">
                        <label for="height">Height</label>
                        <input type="text" class="form-control" id="height" name="height">
                      </div>
                      <div class="form-group">
                        <label for="gender">Gender</label>
                        <select id="gender" class="custom-select form-control-border border-width-2" name="gender">
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                        </select>
                      </div>
                    </div><!-- /.card text -->
                  </div><!-- /.card body -->
                  <div class="card-footer">
                    <a href="view-casts.php" class="btn btn-default">Back</a>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                  </div><!-- /.card footer -->
                </div><!-- /.card -->
              </form>
            </div><!-- /.col-12 -->
          </div><!-- /.row -->
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
    $('#add-cast').submit(function(e) {
      e.preventDefault();
      $.ajax({
        url: './func/ajax.php?action=save_cast',
        data: new FormData($(this)[0]),
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        success: function(resp) {
          if (resp == 1) {
            var url = "view-casts.php";
            $(location).attr('href', url);
          } else {
            alert(resp);
          }
        }
      })
    })

    function displayImg(input, _this) {
      if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = function(e) {
          $('#cimg').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    }
    $('.select2').select2();
  </script>
</body>

</html>
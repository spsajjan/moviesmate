<?php
include "./func/fetch_data.php";
$page = "view-language";
$rows = $getData->get_langs();
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
              <h1 class="m-0">Language List</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Starter Page</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->


      <!-- MODALS -->
      <div class="modal fade" id="lang-form">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Language Form</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <form id="manage-lang" enctype="multipart/form-data">
              <input type="hidden" name="id" value="">
              <div class="modal-body">
                <div class="form-group">
                  <label for="lang">Id</label>
                  <input type="text" class="form-control" id="id" name="id">
                </div>
                <div class="form-group">
                  <label for="lang">Language</label>
                  <input type="text" class="form-control" id="lang" name="lang">
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
      <div class="container-fluid">
        <div class="card card-primary card-outline">
          <div class="card-body">
            <button type="button" class="btn btn-primary new-lang" data-toggle="modal" data-target="#lang-form">Add New Language</button>
            <hr />
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Id</th>
                  <th>Language</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $i = 1;
                foreach ($rows as $row) :
                ?>
                  <tr>
                    <td><?= $i; ?></td>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['language'] ?></td>
                    <td>
                      <button class="btn btn-primary edit-lang" data-toggle="modal" data-target="#lang-form" data-id="<?= $row['id'] ?>" data-lang="<?= $row['language'] ?>">Edit</button>
                      <button class="btn btn-danger del-lang">Delete</button>
                    </td>
                  </tr>
                <?php
                  $i++;
                endforeach;
                ?>
              </tbody>
            </table>
          </div>
        </div>
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
  <script>
    $(function() {
      $(".table").DataTable();
    });

    function _reset() {
      $('[name="id"]').val('');
      $('#manage-lang').get(0).reset();
    }

    $('.new-lang').click(function() {
      _reset();
    });


    $('.edit-lang').click(function() {
      let cat = $('#manage-lang')
      cat.get(0).reset()
      cat.find("[name='id']").val($(this).attr('data-id'))
      cat.find("[name='lang']").val($(this).attr('data-lang'))
    });


    $("#manage-lang").submit(function(e) {
      e.preventDefault()
      $.ajax({
        url: 'func/ajax.php?action=save_lang',
        method: "POST",
        mimeType: "multipart/form-data",
        processData: false,
        contentType: false,
        data: new FormData($(this)[0]),
        success: function(resp) {
          if (resp == 1) {
            $('#genre-lang').modal('toggle');
            location.reload();
          } else {
            alert(resp);
          }
        }
      })
    })

    $('.del-lang').click(function() {
      _conf("Are you sure to delete this language?", "del-lang", [$(this).attr('data-id')])
    })

    function delete_lang($id) {
      $.ajax({
        url: 'func/ajax.php?action=delete_lang',
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
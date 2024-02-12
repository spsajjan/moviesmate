<?php
include "./config/db_connect.php";
include "./func/fetch_data.php";
$page = "Add New Media";
$id = $_GET['id'];
$this_media = $getData->get_single_media($id);
$type = $getData->get_media_type($this_media['type']);
$category = $getData->get_media_category($this_media['category']);
$img_url = "../main/img/" . $type . "/" . $category . "/" . $this_media['img_url'];
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
              <h1 class="m-0">Add Media</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                <li class="breadcrumb-item active">Manage Media</li>
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
              <form id="edit-media" enctype="multipart/form-data">
                <div class="card card-primary card-outline">
                  <div class="card-body">
                    <h5 class="card-title">Add Media</h5>
                    <div class="card-text">
                      <input type="hidden" name="id" value="">
                      <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title">
                      </div>
                      <div class="form-group">
                        <label for="language">Language</label>
                        <select class="custom-select rounded-0" id="lang" name="lang">
                        <?php
                          $languages = $getData->get_langs();
                          foreach ($languages as $language) :
                        ?>
                          <option value="<?= $language['id'] ?>"><?= ucfirst($language['language']) ?></option>
                        <?php endforeach; ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="type">Type</label>
                        <select id="type" class="custom-select form-control-border border-width-2" name="type">
                          <?php
                          $types = $getData->get_type();
                          foreach ($types as $type) :
                          ?>
                            <option value="<?= $type['id']; ?>"><?= $type['type']; ?></option>
                          <?php endforeach; ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="category">Category</label>
                        <select id="category" class="custom-select form-control-border border-width-2" name="category">
                          <?php
                          $categories = $getData->get_category();
                          foreach ($categories as $category) :
                          ?>
                            <option value="<?= $category['id'] ?>"><?= $category['category'] ?></option>
                          <?php endforeach; ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="genre">Genre</label>
                        <div class="select2-purple">
                          <select multiple id="genre_sel" class="select2 form-control" name="genre[]" data-dropdown-css-class="select2-purple" data-placeholder="Choose a genre">
                            <?php
                            $genres = $getData->get_genre();
                            foreach ($genres as $genre) :
                            ?>
                              <option value="<?= $genre['id'] ?>"><?= $genre['name'] ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="rating">Rating</label>
                        <select id="rating" class="custom-select form-control-border border-width-2" name="rating">
                          <option value="0">Choose a rating</option>
                          <?php
                          for ($i = 0; $i <= 10; $i++) :
                          ?>
                            <option value="<?= $i ?>"><?= $i ?></option>
                          <?php endfor; ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="date">Date</label>
                        <input type="date" class="form-control" name="date" id="date">
                      </div>
                      <div class="form-group">
                        <label for="content">Content</label>
                        <textarea class="form-control summernote" name="content" id="content" cols="30" rows="10"></textarea>
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
                        <img src="<?= $img_url; ?>" alt="" id="cimg" style="height: 350px; padding: 10px;">
                      </div>
                      <div class="form-group">
                        <label for="genre">Casts</label>
                        <div class="select2-purple">
                          <select multiple id="casts" class="select2 form-control" name="casts[]" data-dropdown-css-class="select2-purple" data-placeholder="Choose a cast">
                            <?php
                            $casts = $getData->get_all_casts();
                            foreach ($casts as $cast) :
                            ?>
                              <option value="<?= $cast['id'] ?>"><?= $cast['first_name']." ".$cast['last_name'] ?></option>
                            <?php endforeach; ?>
                          </select>
                        </div>
                      </div>
                    </div><!-- /.card text -->
                  </div><!-- /.card body -->
                  <div class="card-footer">
                    <a href="view-media.php" class="btn btn-default">Back</a>
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
    <?php include "partials/control-sidebar.php"; ?>
    <?php include "partials/footer.php"; ?>
  </div>
  <!-- ./wrapper -->
  <?php include "partials/scripts.php"; ?>
  <script type="text/javascript">
    $('#edit-media').submit(function(e) {
      e.preventDefault();
      $.ajax({
        url: './func/ajax.php?action=save_media',
        data: new FormData($(this)[0]),
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        success: function(resp) {
          if (resp == 1) {
            var url = "view-media.php";
            $(location).attr('href', url);
          } else {
            alert(resp);
          }
        }
      })
    })

    $(document).ready(function() {
      let cat = $('#edit-media');
      $.ajax({
        url: 'func/ajax.php?action=get_media',
        method: "POST",
        data: {
          "id": <?= $id ?>
        },
        success: function(data) {
          data = $.parseJSON(data);
          cat.find("[name='id']").val(data.id);
          cat.find("[name='title']").val(data.title);
          cat.find("[name='type']").val(data.type);
          cat.find("[name='category']").val(data.category);
          cat.find("[name='rating']").val(data.rating);
          cat.find("[name='genre']").val(data.genre);
          cat.find("[name='date']").val(data.released_dt);
          $("#lang option[value='" + data.lang + "']").attr("selected","selected");
          var genre_values;
          genre_values = data.genre.split(",");
          if (data.casts != undefined){
            var cast_values = data.casts;
            cast_values = cast_values.split(",");
            $('#casts').select2({}).select2('val', [cast_values]);
          } 
          //-- Show selected genre
          $('#genre_sel').select2({}).select2('val', [genre_values]);
          // cat.find("#content").val(data.content); //-- This doesnt work since we are using summernote.
          $(".summernote").summernote("code", data.content);
          // $('#cimg').attr('src', '');
        }
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
    $('.select2').select2();
    $('.summernote').summernote({
      dialogsInBody: true,
      dialogsFade: false,
      height: 300,
      fontSizes: ['10', '12', '14', '16', '18', '24', '36', '48', '64', '82', '150'],
      toolbar: [
        ['fontsize', ['fontsize']],
        ['style', ['style']],
        ['font', ['bold', 'underline', 'italic', 'clear', 'strikethrough', 'superscript', 'subscript']],
        ['fontname', ['fontname']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']],
        ['table', ['table']],
        ['insert', ['link', 'picture', 'doc', 'video', 'hr']],
        ['view', ['fullscreen', 'codeview', 'help']]
      ]
    });
  </script>
</body>
</html>
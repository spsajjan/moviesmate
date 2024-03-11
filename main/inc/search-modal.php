    <!-- Search modal Begin -->
    <div class="search-model">
      <div class="h-100 d-flex flex-column">
        <div class="h-50 d-flex align-items-center justify-content-center">
          <a href="index.php" class="search-close-switch">+</a>
          <form class="search-model-form" action="search-results.php">
            <input type="text" id="search-input" name="searchTxt" placeholder="Search here.....">
            <button class="btn btn-secondary" type="submit">Search</button>
          </form>
        </div>
        <div class="container" id="search-results">
          <ul class="list-group list-group-flush" id="result-list"></ul>
        </div>
      </div>
    </div>
    <!-- Search modal end -->

    <script>
      // Search model
      $('.search-switch').on('click', function(e) {
        $('.search-model').fadeIn(400);
        $("#search-input").keyup(function(e) {
          $("#result-list").empty();
          var input = $('#search-input').val();
          console.log(input);
          if (input != "") {
            $.ajax({
              url: "libs/livesearch.php",
              method: "POST",
              data: {
                input: input
              },
              success: function(data) {
                $("#result-list").append(data);
              }
            })
          } else {
            $("search-results").css("display", "none");
          }
        })
      });
    </script>
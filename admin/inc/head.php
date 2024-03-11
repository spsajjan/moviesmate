<?php
include "../config/db_connect.php";
include "../libs/fetch_data.php";
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | <?php echo @$page ?: "ADMIN"; ?> </title>
    <!-- FavIcon -->
    <link rel="icon" href="assets/img/moviesmate-icon.png" type="image/png">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="assets/plugins/fa-fonts/fontawesome.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/custom.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/plugins/adminLTE/css/adminlte.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="assets/plugins/sweetalert2/sweetalert2.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <!-- Summernote -->
    <link rel="stylesheet" href="assets/plugins/summernote/summernote-bs4.min.css">
    <!-- Date Range Picker -->
    <script src="assets/plugins/moment/moment.min.js"></script>
    <link rel="stylesheet" href="assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
</head>
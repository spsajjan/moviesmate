<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
        <img src="assets/img/moviesmate-icon.png" alt="Logo" class="brand-image" style="opacity: .8">
        <span class="brand-text font-weight-light">MoviesMate</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="./" class="nav-link <?php echo ($page == "dashboard" ? "active" : "") ?>">
                        <i class="nav-icon far fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="view-media.php" class="nav-link <?php echo ($page == "view-media" ? "active" : "") ?>">
                        <i class="nav-icon far fa-image"></i>
                        <p>
                            View Media
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="view-casts.php" class="nav-link <?php echo ($page == "view-casts" ? "active" : "") ?>">
                        <i class="nav-icon far fa-users"></i>
                        <p>
                            View Casts
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="view-genre.php" class="nav-link <?php echo ($page == "view-genre" ? "active" : "") ?>">
                        <i class="nav-icon far fa-bars-staggered"></i>
                        <p>
                            View Genre
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
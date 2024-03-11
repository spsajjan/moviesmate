<ul class="list-group">
    <?php
    include('../../config/db_connect.php');
    if (isset($_POST['input'])) {
        extract($_POST);
        $sql = "SELECT `id`,`title` FROM media WHERE title LIKE '%{$input}%' LIMIT 5";
        $result =  mysqli_query($conn, $sql);
        $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
        foreach ($rows as $row) : ?>
            <a href="single.php?id=<?= $row['id']; ?>">
                <li class="list-group-item list-group-item-dark"><?= $row['title']; ?></li>
            </a>
    <?php
        endforeach;
    }
    ?>
</ul>
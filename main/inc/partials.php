<?php
class Partials
{
    function single_media($row, $type, $category)
    {
?>
        <a href="single.php?id=<?= $row['id'] ?>">
            <div class="col-lg-3">
                <div class="cg-item">
                    <div class="cg-pic set-bg" data-setbg="img/<?= $type ?>/<?= $category ?>/<?= $row['img_url'] ?>">
                        <div class="label"><span>Rating : <?= $row['rating'] ?> / 10</span></div>
                    </div>
                    <div class="cg-text">
                        <h5><a href="single.php?id=<?= $row['id'] ?>"><?= $row["title"] ?></a></h5>
                        <ul>
                            <li>by <span>Admin</span></li>
                            <li><i class="fa fa-clock-o"></i><?= dateMake($row['released_dt']) ?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </a>
<?php
    }
}
$partData = new Partials;

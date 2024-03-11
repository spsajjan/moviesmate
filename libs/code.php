<?php
function dateMake($date)
{
    if ($date != null) {
        return date_format(date_create($date), "jS M Y");
    }
}

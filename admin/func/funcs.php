<?php
function clean($string)
{
   $string = str_replace(' ', '-', $string); // Replaces spaces with hyphens.
   return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
}

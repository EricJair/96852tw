<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');

date_default_timezone_get();

$settings = [];

$settings = (require __DIR__ . '/env.php')($settings);

return $settings;

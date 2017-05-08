<?php

error_reporting(0);
ini_set('display_errors', FALSE);
ini_set('display_startup_errors', FALSE);


// Version
define('VERSION', '2.3.0.2');

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: install/index.php');
	exit;
}

// Startup
require_once(__DIR__ . '/system/startup.php');

start('catalog');
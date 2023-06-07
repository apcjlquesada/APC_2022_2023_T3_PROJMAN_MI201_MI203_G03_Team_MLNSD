<?php
    // DB Params
    define('DB_HOST', 'localhost');
    define('DB_USER', 'root');
    define('DB_PASS','');
    define('DB_NAME', 'vwiws');

    // App Root
    define('APPROOT', dirname(__DIR__));

    // URL Root
	define('URLROOT','http://localhost/apc_2022_2023_T3_PROJMAN_MI201_MI203_G03_Team_MLNSD');
	
	// REFERER Page
	$my_referer = (isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : (isset($_POST['referer']) ? trim($_POST['referer']) : false));
	define('REFERER', $my_referer);
	
    // Site Name
    define('SITENAME', 'Villamin Wood & Iron Works');

    // Site Name Short
    define('SITENAMESHORT', 'VWIWS');

    // Company Logo
    define('LOGO','THIS IS A LOGO'); //temporary

    // Company Catchphrase
    define('CATCHPHRASE','Subok na matibay since 1983');

    // Main Branch Address
    define('MainBranchAddress','');
	
	// Default Image
	define('DEFAULTIMAGE', 'default_product_img00.png');
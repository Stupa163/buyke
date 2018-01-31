<link rel="stylesheet" href="styles/style_navbar.css">
<?php
include 'conn.php';
session_start();
include(isset($_SESSION['ID']))?'disp_navbar_co.html':'disp_navbar_deco.html';
?>
<div id="block"></div>
<script type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="scripts/script_navbar.js"></script>
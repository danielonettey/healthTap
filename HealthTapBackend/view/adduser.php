<?php
require('../controller/usercontroller.php');

$a = $_GET['firstname'];
$b = $_GET['lastname'];
$c = $_GET['password'];
$d = $_GET['usertype'];


//run function to insert user
$adduser = addctrl($a,$b,$c,$d);

//convert to json
$order_json = json_encode($adduser);

echo $order_json;


?>
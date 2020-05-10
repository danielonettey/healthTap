<?php
require('../controller/usercontroller.php');

//run function to get user
$getuser = getctrl();

//convert to json
$order_json = json_encode($getuser);

echo $order_json;

?>


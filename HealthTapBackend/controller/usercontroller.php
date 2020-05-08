<?php
require('../classes/userclass.php');

//controller fxn to add user
function addctrl($a,$b,$c,$d){
    $c = md5($c);
    $adduser = new userclass();

    $checkadd = $adduser->addUser($a,$b,$c,$d);

    if($checkadd){
        echo "User added";
    }
    else{
        return false;
    }
}

function getctrl(){
    $getuser = new userclass();

    $checkget = $getuser->getUsers();

    if($checkget){
        $arr =array();
         while($result = $getuser->db_fetch()){
            $arr[] = $result;
        }
        return $arr;
    }
    else{
        return false;
    }
}


?>
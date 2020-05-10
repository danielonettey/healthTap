<?php
require('../settings/db_class.php');

class userclass extends db_connection{

    //method to add user
    public function addUser($a,$b,$c,$d){
        $sql = "INSERT into `USERS`(`firstname`,`lastname`,`password`,`usertype`)
         VALUES('$a','$b','$c','$d')";
        
        return $this->db_query($sql);
    }
    
    public function getUsers(){
        $sql = "SELECT * from USERS ";

        return $this->db_query($sql);
    }

    
}


?>
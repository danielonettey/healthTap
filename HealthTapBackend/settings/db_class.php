<?php
require('../settings/db_cred.php');

class db_connection{
    //instance variables
    public $db=null;
    public $results = null;

    function db_connect(){
		//connection
		$this->db = mysqli_connect(SERVER,USERNAME,PASSWD,DATABASE);
		//test the connection
		if (mysqli_connect_errno()) {
			return false;
		}else{
			return true;
		}
    }
    
    //execute a query
    function db_query($sqlQuery){
		if (!$this->db_connect()) {
			return false;
		} 
		elseif ($this->db==null) {
			return false;
		}

		//run query 
		$this->results = mysqli_query($this->db,$sqlQuery);
		if ($this->results == false) {
			return false;
		}else{
			return true;
		}
		
    }
    
    //fetch data
    function db_fetch(){
		//check if result was set
		if ($this->results == null) {
			return false;
		}
		elseif ($this->results == false) {
			return false;
		}
		//return a record
		return mysqli_fetch_assoc($this->results);

	}
}

?>
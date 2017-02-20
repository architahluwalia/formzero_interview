<?php
class db{
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $db_name = "testing";
    
    
    function connect_db(){
        $con = mysqli_connect($this->servername, $this->username, $this->password , $this->db_name);
        if (!$con) {
           return false;
        }
        return $con;
    }   

    function close_db($con){
        mysqli_close($con);
    }
}
?>
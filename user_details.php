<?php
include 'db.php';

class user_details{
   
    private $con;
    function __construct(){
        $db = new db();
        $this->con = $db->connect_db();
    }

    function insert_all(){

        for($i=1 ; $i<100;$i++){

            $length = 10;
            $randomString = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $length);
            // ECHO $randomString.'ad'.$i;
            $sql = "insert into user_details (user_id , name) values("
                .$i .",'"
                .$randomString."')";
            if (mysqli_query($this->con, $sql)) {
            } else {
                return false;
            }   
        }

        for($i=1 ; $i<100;$i++){
            do {   
                $manager_id = mt_rand(1,100);
            } while($manager_id == $i);
            $dept_id = mt_rand(1,5);

            $sql = "insert into user(user_id , manager_id, dept_id) values("
                .$i .","
                .$manager_id.","
                .$dept_id.")";
            if (mysqli_query($this->con, $sql)) {
            } else {
                return false;
            }   
        }
        return true;
    }
}
?>
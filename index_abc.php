<html>
    <head>
        
    </head>
    <body>
        <form action="" method="post">
            <input value="insert_all" type="submit"  name='submit'/>
        </form>        
    </body>
</html>

<?php
include 'db.php';
        $db = new db();
        $con = $db->connect_db();
for($i=11 ; $i<100000;$i++){

            $length = 10;
            $randomString = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $length);

            $sql = "insert into user_details (user_id , name) values("
                .$i .","
                .$randomString.")";
            if (mysqli_query($con, $sql)) {
            } else {
                //return false;
            }
        }

for($i=11 ; $i<100000;$i++){
    do {   
        $manager_id = mt_rand(1,99999);
    } while($manager_id == $i);
    $dept_id = mt_rand(1,5);

    $sql = "insert into user(user_id , manager_id, dept_id) values("
        .$i .","
        .$manager_id.","
        .$dept_id.")";
    if (mysqli_query($con, $sql)) {
    } else {
       // return false;
    }   
 }	

if (!empty($_POST)) {
    require 'user_details.php';

    $user_details=new user_details();
    switch ($_POST['submit']) {
        case 'insert_all':
            if($user_details->insert_all())
                echo 'inserted all records';
            else 
                echo 'no';
                // echo 'hey';
            break;
        // case 'select':
        //     select();
        //     break;
    }
}
else echo"hup";
?>

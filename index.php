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
if (!empty($_POST)) {
    require 'user_details.php';

    $user_details=new user_details();
    switch ($_POST['submit']) {
        case 'insert_all':
            echo 'case';
            $result=$user_details->insert_all();
                echo 'inserted all records'.$result;
            break;
    }
}
else echo"hup";
?>

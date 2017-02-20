<?php
include 'db.php';

class service_call{
	
	private $db;
	private $con;
	function __construct(){
		$db = new db();
		$this->con = $db->connect_db();
	}

	function getUserDept(){
		if($this->con ==false){
		       echo 'db not connected';
		}
		else{
		    $sql="select u.user_id,
		    	 d.name 
		    	 from 
		    	 	user u 
		    	 inner join 
		    	 	department d 
		    	 where d.id = u.dept_id";
		    $result=mysqli_query($this->con,$sql);
		    $result_set=mysqli_fetch_all($result,MYSQLI_ASSOC);
			header('Content-type: application/json');
			echo json_encode($result_set);
		} 
	}

	function getUserManager(){
		if($this->con ==false){
		       echo 'db not connected';
		}
		else{
		    $sql="select ud.name as user 
		    		, md.name as manager 
		    	from 
		    		user_details AS ud 
		    	inner join 
		    		user AS u 
		    	on ud.user_id = u.user_id 
		    	inner join 
		    		user_details as md 
		    	on md.user_id = u.manager_id";
		    $result=mysqli_query($this->con,$sql);
		    $result_set=mysqli_fetch_all($result,MYSQLI_ASSOC);
			header('Content-type: application/json');
			echo json_encode($result_set);
		} 
	}

	function getUserManagerDept(){
		if($this->con ==false){
		       echo 'db not connected';
		}
		else{
		    $sql="select ud.name as user 
		    		, md.name as manager 
					, d.name as dept_name
		    	from 
		    		user_details AS ud 
		    	inner join 
		    		user AS u 
		    	on ud.user_id = u.user_id 
		    	inner join 
		    		user_details as md 
		    	on md.user_id = u.manager_id
				inner join
					department as d
                on d.id= u.dept_id";
		    $result=mysqli_query($this->con,$sql);
		    $result_set=mysqli_fetch_all($result,MYSQLI_ASSOC);
			header('Content-type: application/json');
			echo json_encode($result_set);
		} 
	}
}
?>
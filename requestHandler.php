<?php
require_once 'service_call.php';

if(isset($_GET["flag"]))
	$flag = $_GET["flag"];

switch($flag){

	case "dept":
		$service_call = new service_call();
		$service_call->getUserDept();
		break;
		
	case "manager":
		$service_call = new service_call();
		$service_call->getUserManager();
		break;

	case "userManagerDept" :
		$service_call = new service_call();
		$service_call->getUserManagerDept();
		break;
	case "" : 
		echo '404 not found!! wrong flag';
		break;
}
?>

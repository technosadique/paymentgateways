<?php 
session_start();
include "connection.php";
 if(!empty($_GET)){	
	$_SESSION['product'] = filter_var($_GET['item_name'], FILTER_SANITIZE_STRING);
	$_SESSION['txn_id'] =  filter_var($_GET['tx'], FILTER_SANITIZE_STRING); 
	$_SESSION['amount'] =  filter_var($_GET['amt'], FILTER_SANITIZE_STRING);
	$_SESSION['currency'] =  filter_var($_GET['cc'], FILTER_SANITIZE_STRING); 
	$_SESSION['status'] =  filter_var($_GET['st'], FILTER_SANITIZE_STRING);
	$_SESSION['payer_id'] =  filter_var($_GET['PayerID'], FILTER_SANITIZE_STRING);
	$_SESSION['payer_email'] =  filter_var($_GET['payer_email'], FILTER_SANITIZE_STRING);
	$_SESSION['payer_name'] = filter_var($_GET['first_name'], FILTER_SANITIZE_STRING).'  '.filter_var($_GET['last_name'], FILTER_SANITIZE_STRING);
	
	date_default_timezone_set("Asia/Kolkata");
	
	$sql = "INSERT INTO payments (
    payer_id, payer_email, amount, item_id, item_name, currency, status, created_date
	) VALUES (
		'" . $_SESSION['payer_id'] . "',
		'" . $_SESSION['payer_email'] . "',
		'" . $_SESSION['amount'] . "',
		'" . $_SESSION['txn_id'] . "',
		'" . $_SESSION['product'] . "',
		'" . $_SESSION['currency'] . "',
		'" . $_SESSION['status'] . "',
		'" . date('Y-m-d H:i:s') . "'
	)";
  

	
	if($conn->query($sql)){	
		header("location:success.php");
	}
	else{
		echo "Error: ".$sql."<br>".mysqli_error($conn);
	}
 }
?>
<!DOCTYPE html>
<HTML>
<head>

<title>Success</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">

<div class="alert alert-success"><strong>Success!</strong> Payment  has been successfull</div>

<table class="table table-bordered">
	<tr><td>Transaction id</td><td><?php echo $_SESSION['txn_id']; ?></td></tr>
	<tr><td>Product Name</td><td><?php echo $_SESSION['product']; ?></td></tr>
	<tr><td>Price</td><td><?php echo $_SESSION['amount']; ?></td></tr>
	<tr><td>Payment Status</td><td><?php echo $_SESSION['status']; ?></td></tr>
</table>

</div>
</body>
</HTML>
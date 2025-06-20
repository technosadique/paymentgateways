<?php 
$conn=mysqli_connect('localhost','root','','paypal');
if(!$conn){
	die('connection error'.mysqli_connect_error());
}
?>
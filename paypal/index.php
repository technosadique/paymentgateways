<?php 
include "connection.php";
$sql="select * from courses";
$result=$conn->query($sql);
?>

<!DOCTYPE html>
<HTML>
<head>

<title>Courses</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<br>
<div class="container">
<div class="row">
<?php while ($row = $result->fetch_assoc()) { ?>
<form method="post" action="https://www.sandbox.paypal.com/cgi-bin/webscr">

<input type="hidden" name="business" value="sb-vryri36838593@business.example.com">
<input type="hidden" name="item_name" value="<?php echo $row['name'];?>">
<input type="hidden" name="item_number" value="<?php echo $row['id'];?>">
<input type="hidden" name="amount" value="<?php echo $row['price'];?>">
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="no_shipping" value="1">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="return" value="http://localhost:8080/payment-gateways/paypal/success.php">
<input type="hidden" name="cancel_return" value="http://localhost:8080/payment-gateways/paypal/cancel.php">

<div class="col-md-4">
  <div class="card" style="width:200px">
  <img class="card-img-top" src="upload/<?php echo $row['image'];?>" alt="Card image" width="100" height="100">
  <div class="card-body">
    <h4 class="card-title"><?php echo $row['name'];?></h4>
    <p class="card-text">$<?php echo $row['price'];?></p>
    <button type="submit" class="btn btn-primary">Buy Now</button>
  </div>
</div>
</div>
</form>
<?php } ?>

</div>
</div>
</body>
</html>

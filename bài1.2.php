<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>trang chào </title>
	<style type="text/css">
		*{
			margin: 0 auto;
			line-height: 2;
			text-align: center;

		}
		form{
			width: 50%;
			margin: 0;
			border: 1px solid;
		}
	</style>
</head>
<body>
<?php
	error_reporting(0);
	if(isset($_POST['ok'])){
		$ten = isset($_POST['ten'])?$_POST['ten']:"";

	}
	?>
	<form name="form1" method="POST" action="Bai1.php">	
		<h2>IN LỜI CHÀO</h2>
		<label for="ten">Họ tên của bạn:</label>
		<input type="text" name="ten" id="ten" value="<?php echo $ten; ?>">
		<h3>
			<?php 
		     	echo "Chào bạn,"  .$ten;
		    ?>
			
		</h3>
		<input type="submit" name="ok" value="Chào">
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.container {
	position: absolute;
	right: 0;
	margin: 20px;
	max-width: 300px;
	padding: 16px;
	background-color: white;
}

.container input {
	padding: 10px;
	margin: 5px 0 15px 10;
}
</style>
<body>


<!-- 
	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<h3>Accounting Application Login</h3>
		<!-- Indicators -->
<!--		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
<!--		<div class="carousel-inner">
			<div class="item active">
				<img src="Images/POS.jpg" alt="POS">
			</div>

			<div class="item">
				<img src="Images/clothing.jpg" alt="Store">
			</div>

			<div class="item">
				<img src="Images/Inventory2'.jpg" alt="Inventory Management">
			</div>
		</div>

		<!-- Left and right controls -->
<!--		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a>
		<!--  a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a-->

			
				<h3>Login</h3>
				<p id="validation" style="color: white"></p>
				<input type="text" id="uname" placeholder="Enter Username">
				<br> 
				<input type="password" id="password"
					placeholder="Enter Password"> 
					<br> 
					<input
					type="button" id="resetBtn" value="Reset" onclick="reset()">
				<input type="button" id="loginBtn" value="Login" onclick="login()">
			

<!--	</div-->
</body>
<script>
	function reset() {
		var str1 = document.getElementById("password").value;
		document.getElementById("uname").value = "";
		document.getElementById("password").value = "";
		document.getElementById("validation").innerHTML = "";
	}

	function login() {
		var str1 = document.getElementById("uname").value;
		var str2 = document.getElementById("password").value;
		out.print(str1);
		if (str1 == "admin" && str2 == "admin") {
			location.href("Company.jsp"	);
		} else
			document.getElementById("validation").innerHTML = "Incorrect username or password entered! Please try again!";

	}
</script>
</html>
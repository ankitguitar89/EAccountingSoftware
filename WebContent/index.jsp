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
<script src="js/validate.js"></script>
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


	<form name="myForm" action="Company.jsp"
onsubmit="return validateForm()" method="post">
		<h3>Login</h3>
	<p id="validation" style="color: white"></p>
	<input type="text" id="uname" placeholder="Enter Username">
	<br>
	<input type="password" id="password" placeholder="Enter Password">
	<br>
	<input type="button" id="resetBtn" value="Reset" onclick="reset()">
	<input type="submit" id="loginBtn" value="Login">
	</form>


	<!--	</div-->
</body>

</html>
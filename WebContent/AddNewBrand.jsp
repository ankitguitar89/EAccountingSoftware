<!--  %@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Brand</title>
</head>
<body>
	<%@include  file="LeftNavMenu.html" %>
	<h4>Add Brand</h4>
	<form action="">
		<label for="cname">Brand Name</label> <input type="text" id='brandname'>

		<input type="button" name="submit_name" id="btn_name" value="Submit" onclick="submit()"/>
	</form>
</body>
</html>
<!--  %@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Company</title>
</head>
<body>
	<h4>Add Company Details</h4>
	<form action="">
		<label for="cname">Company Name</label> <input type="text" id='cname'>

		<label for="btype">Business Type</label> <input type="text" id="btype">

		<label for="address1">Address Line 1:</label> <input type="text"
			id="address1"> <label for="address2">Address Line 2:</label>
		<input type="text" id="address2"> <label for="city">City</label>
		<input type="text" id="city"> <label for="state">State</label>
		<input type="text" id="state"> <label for="zip">Zip</label> <input
			type="text" id="zip"> <label for="country">Country</label> <input
			type="text" id="country"> <label for="phone">Telephone</label>
		<input type="text" id="phone"> <label for="website">Website</label>
		<input type="text" id="website"> <label for="email">Email</label>
		<input type="text" id="email">
		<input type="button" name="submit_name" id="btn_name" value="Submit" onclick="submit()"/>
	</form>
</body>
</html>
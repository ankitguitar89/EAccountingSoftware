<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Contact</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
.item-page {
	margin-left: 160px;
}

form {
	margin-top: 30px;
}
</style>

</head>
<body>
	<%@include file="LeftNavMenu.html"%>
	<div class="item-page">
		<h4>Add New Contact</h4>
		<hr style="" />
		<form method="post" action="processContact.jsp">

			<div class="form-group row">
				<label for="firstName" class="col-sm-2 col-form-label">Primary Contact</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="firstName" placeholder="First Name">
				</div>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName" placeholder="Last Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="company" class="col-sm-2 col-form-label">Company Name</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="company">
				</div>
			</div>
			<div class="form-group row">
				<label for="primaryPhone" class="col-sm-2 col-form-label">Primary Phone#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="primaryPhone">
				</div>
			</div>
			<div class="form-group row">
				<label for="alternatePhone" class="col-sm-2 col-form-label">Alternate Phone#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="alternatePhone">
				</div>
			</div>
			<div class="form-group row">
				<label for="email" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="email">
				</div>
			</div>

			<div class="form-group row">
				<label for="address" class="col-sm-2 col-form-label">Address</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="address">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-2">
					<input type="submit" value="Submit" class="btn btn-success">
					<a href="Contacts.jsp"><input type="button" value="Cancel"
						class="btn"></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
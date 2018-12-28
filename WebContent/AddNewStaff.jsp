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
		<h4>Add New Staff</h4>
		<hr style="" />
		<form method="post" action="processContact.jsp">

			<div class="form-group row">
				<label for="firstName" class="col-sm-1 col-form-label">First
					Name</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="firstName">
				</div>
			</div>
			<div class="form-group row">
				<label for="lastName" class="col-sm-1 col-form-label">Last
					Name</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName">
				</div>
			</div>
			<div class="form-group row">
				<label for="Gender" class="col-sm-1 col-form-label">Gender</label>
				<div class="col-sm-2">
					<select class="form-control" name="sex">
						<option value="male">MALE</option>
						<option value="female">FEMALE</option>
						<option value="na">NA</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="dob" class="col-sm-1 col-form-label">Birth Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="dob">
				</div>
			</div>
			<div class="form-group row">
				<label for="primaryPhone" class="col-sm-1 col-form-label">Primary
					Phone#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="primaryPhone">
				</div>
			</div>
			<div class="form-group row">
				<label for="alternatePhone" class="col-sm-1 col-form-label">Alternate
					Phone#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="alternatePhone">
				</div>
			</div>
			<div class="form-group row">
				<label for="email" class="col-sm-1 col-form-label">Email</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="email">
				</div>
			</div>

			<div class="form-group row">
				<label for="joiningDate" class="col-sm-1 col-form-label">Joining
					Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="joiningDate">
				</div>
			</div>

			<div class="form-group row">
				<label for="address" class="col-sm-1 col-form-label">Address</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="address">
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-2">
					<a href="Staff.jsp"><input type="submit" value="Submit" class="btn btn-primary"></a>
					
<!--Insert Into create table staff(firstname , lastname ,gender , dob , primarycontact , alternatecontact , email , joiningdate , address ,creationdate)-->
					
					<a href="Staff.jsp"><input type="button" value="Cancel"
						class="btn btn-primary"></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
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
	margin-left: 180px;
}

form {
	margin-top: 30px;
}
</style>

</head>
<body>
	<%@include file="LeftNavMenu.html"%>
	<div class="item-page">
		<h4>Add New Client</h4>
		<hr style="" />
		<form method="post" action="processContact.jsp">

			<div class="form-group row">
				<label for="firstName" class="col-sm-2 col-form-label">Primary
					Contact</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="firstName"
						placeholder="First Name">
				</div>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName"
						placeholder="Last Name">
				</div>
			</div>
			<div class="form-group row">
				<label for="company" class="col-sm-2 col-form-label">Company
					Name</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="company">
				</div>
			</div>
			<div class="form-group row">
				<label for="primaryPhone" class="col-sm-2 col-form-label">Phone#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="primaryPhone" placeholder="Primary">
				</div>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="alternatePhone" placeholder="Alternate">
				</div>
			</div>
			<div class="form-group row">
				<label for="email" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="email">
				</div>
			</div>

			<div class="form-group row">
				<label for="address" class="col-sm-2 col-form-label">Address</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="3" name="address"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="paymentTerms" class="col-sm-2 col-form-label">Payment
					Terms</label>
				<div class="col-sm-2">
					<select name="paymentTerms">
						<option>Due on Receipt</option>
						<option>Net 15</option>
						<option>Net 30</option>
						<option>Net 45</option>
						<option>Net 60</option>
						<option>Due end of the month</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label for="remarks" class="col-sm-2 col-form-label">Remarks</label>
				<div class="col-sm-4">
					<textarea class="form-control" rows="5" name="remarks" /></textarea>
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-2">
					<input type="submit" value="Save" class="btn btn-success">
					<a href="Clients.jsp"><input type="button" value="Cancel"
						class="btn"></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
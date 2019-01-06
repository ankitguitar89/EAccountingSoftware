<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Invoice</title>
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
		<h4>Add New Invoice</h4>
		<hr style="" />
		<form method="post" action="">

			<div class="form-group row">
				<label for="firstName" class="col-sm-1 col-form-label">Customer Name</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="firstName">
				</div>
			</div>
			
			<div class="form-group row">
				<label for="lastName" class="col-sm-1 col-form-label">Invoice#</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName">
				</div>
			</div>
			<div class="form-group row">
				<label for="Gender" class="col-sm-1 col-form-label">Order Number</label>
				<div class="col-sm-2">
					<select class="form-control" name="gender">
						<option value="male">MALE</option>
						<option value="female">FEMALE</option>
						<option value="na">NA</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="dob" class="col-sm-1 col-form-label">Invoice Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="dob">
				</div>
			
			
				<label for="primaryPhone" class="col-sm-1 col-form-label">Terms</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="primaryPhone">
				</div>
			
			
				<label for="alternatePhone" class="col-sm-1 col-form-label">Due Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="alternatePhone">
				</div>
				</div>
			
			
			<table class="table">
			
			<thead class="tableHeader">
			<tr>
			<th></th>
			<th>Item Details</th>
			<th>Quantity</th>
			<th>Unit</th>
			<th>Rate</th>
			<th>Discount</th>
			<th>Tax</th>
			<th>Amount</th>
			
			</tr>
			</thead>
			<tbody >
			</tbody>
			</table>
			
			Total
			Comment
			Terms & Conditions
		</form>
	</div>
</body>
</html>
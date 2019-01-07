<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Purchase</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<style>
.item-page {
	margin-left: 160px;
}

form {
	margin-top: 30px;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding-top: 5px;
}

#customers td {
	padding-bottom: 10px;
}

#customers td input {
	width: 70px;
	text-align: right;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers th {
	padding-top: 2px;
	padding-bottom: 2px;
	text-align: center;
	background-color: #4CAF50;
	color: white;
}
</style>

</head>
<body>
	<%@include file="LeftNavMenu.html"%>
	<div class="item-page">
		<h4>Add New Purchase</h4>
		<hr style="" />
		<form method="post" action="">

			<div class="row">
				<label for="firstName" class="col-sm-1 col-form-label">Name</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="firstName">
				</div>
				<label for="firstName" class="col-sm-1 col-form-label"
					style="text-align: right;">Bill Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control">
				</div>
			</div>
			<br>
			<div class="row">
				<label for="lastName" class="col-sm-1 col-form-label">Entry
					No</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName">
				</div>
				<label for="lastName" class="col-sm-1 col-form-label">Party
					No</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName">
				</div>
				<label for="lastName" class="col-sm-1 col-form-label">Type</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="lastName">
				</div>
			</div>
			<br>

			<div style="overflow-x: auto;">
				<table id="customers" style="text-align: center;">
					<thead>
						<tr style="background-color: #f9f9f9; color: #777;">
							<th style="text-align: center; width: 200px;">Product</th>
							<th style="text-align: center; width: 50px;">MRP</th>
							<th style="text-align: center; width: 50px;">Box</th>
							<th style="text-align: center; width: 50px;">Pcs</th>
							<th style="text-align: center; width: 50px;">Purchase Rate/Box</th>
							<th style="text-align: center; width: 50px;">Discount 1 (%)</th>
							<th style="text-align: center; width: 50px;">Discount 2 (%)</th>
							<th style="text-align: center; width: 50px;">Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center; width: 200px;"><input
								type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
							<td style="text-align: center; width: 50px;"><input type="text" style="width: 95%;"/></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
			<div class="btn btn-link add-row" id="addTableLine">
				<i class="fas fa-plus-circle"></i> Add another line
			</div>
			
			<br>
			<br>
			<div>
				<label for="primaryPhone" class="col-sm-1 col-form-label">Terms</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="primaryPhone">
				</div>


				<label for="alternatePhone" class="col-sm-1 col-form-label">Due
					Date</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="alternatePhone">
				</div>
			</div>
			<br><br>
			<div>
				<button type="button" class="btn btn-success">Save</button>
				<a href="Purchase.jsp">
					<button type="button" class="btn">Cancel</button>
				</a>
			</div>
		</form>
	</div>
</body>
</html>
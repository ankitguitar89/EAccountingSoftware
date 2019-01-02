<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Item</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
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
		<h4>Add New Item</h4>
		<hr style="" />
		<form method="post" action="addItem">
			<div class="row">
				<div class="col-sm-2">

					<label for="productCode">Product Code</label>
				</div>
				<div class="col-sm-4">
					<input type="text" name="productCode" /> <i
						class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="company">Company</label>
				</div>
				<div class="col-sm-4">
					<input type="text" name="company" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Brand</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Category</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Shape</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Alias Name</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Size</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Color</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Current Stock</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">MRP</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="brand">Purchase Price</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
<br>
			
						<div class="row">
				<div class="col-sm-2">
					<label for="brand">R-Retail Rate</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
						<div class="row">
				<div class="col-sm-2">
					<label for="brand">D-Distributor Rate</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
						<div class="row">
				<div class="col-sm-2">
					<label for="brand">GST</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="brand" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
			
			
			
			
			
				<div class="container">
					<button type="button" class="btn btn-success">Save</button>
					<a href="Items.jsp">
						<button type="button" class="btn">Cancel</button>
					</a>
				</div>
		</form>
	</div>
</body>
</html>
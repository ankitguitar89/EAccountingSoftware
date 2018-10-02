<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Item</title>
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
		<h4>Add New Item</h4>
		<hr style="" />
		<form method="post" action="process.jsp">


			<div class="form-group row">
				<label for="brand" class="col-sm-1 col-form-label">Brand</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="brand">

					<div class="dropdown">
						<input type="text" onclick="myFunction()" class="dropbtn"
							value="Select Brand">
						<div id="myDropdown" class="dropdown-content">
							<input type="text" placeholder="Search.." id="myInput"
								onkeyup="filterFunction()"> <a href="AddNewBrand.jsp">+
								Add new brand</a>
						</div>
					</div>


				</div>
			</div>

			<div class="form-group row">
				<label for="itemName" class="col-sm-1 col-form-label">Name</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="itemName">
				</div>
			</div>
			<div class="form-group row">
				<label for="=productColor" class="col-sm-1 col-form-label">Color</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="productColor">
				</div>
			</div>
			<div class="form-group row">
				<label for="size" class="col-sm-1 col-form-label">Size</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="size">
				</div>
			</div>
			<div class="form-group row">
				<label for="unit1" class="col-sm-1 col-form-label">Unit1</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="unit1">

					<div class="dropdown">
						<input type="text" onclick="myFunction()" class="dropbtn"
							value="Select Unit1">
						<div id="myDropdown" class="dropdown-content">
							<a>Box</a> <a>Pcs</a>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group row">
				<label for="unit2" class="col-sm-1 col-form-label">Unit2</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="unit2">

					<div class="dropdown">
						<input type="text" onclick="myFunction()" class="dropbtn"
							value="Select Unit2">
						<div id="myDropdown" class="dropdown-content">
							<a>Box</a> <a>Pcs</a>
						</div>
					</div>
				</div>
			</div>


			<div class="form-group row">
				<label for="unit" class="col-sm-1 col-form-label">Unit</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="unit">
				</div>
			</div>
			<div class="form-group row">
				<label for="rate" class="col-sm-1 col-form-label">Rate</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="rate">
				</div>
			</div>
			<div class="form-group row">
				<label for="desc" class="col-sm-1 col-form-label">Description</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" name="desc">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-2">
					<input type="submit" value="Submit" class="btn btn-primary">
					<a href="Items.jsp"><input type="button" value="Cancel"
						class="btn btn-primary"></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "accounts";
	String userid = "root";
	String password = "root";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ResultSet resultSet2 = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Item</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<style>
.item-page {
	margin-left: 160px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
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
		<h4>Add New Item</h4>
		<hr style="" />
		<form method="post" action="processItem.jsp">
			<div class="row">
				<div class="col-sm-2">

					<label for="productCode">Product Code</label>
				</div>
				<div class="col-sm-4">
					<input type="text" name="productcode" /> <i
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
					<label for="pgroup">Group</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="pgroup" /> <i class="fas fa-caret-down"></i>
				</div>

				<div class="col-sm-2">
					<label for="brand">Category</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="category" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="shape">Shape</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="shape" /> <i class="fas fa-caret-down"></i>
				</div>

				<div class="col-sm-2">
					<label for="hsn">HSN/SAC</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="hsn" /> <i class="fas fa-caret-down"></i>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-2">
					<label for="conversionunit">Conversion Unit:</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="conversionunit" /> Pcs/Box
				</div>
			</div>

			<br>

			<div style="overflow-x: auto;">
				<table id="customers" style="text-align: center;">
					<thead>
						<tr style="background-color: #f9f9f9; color: #777;">
							<th></th>
							<th style="text-align: center; width: 200px;">Alias Name</th>
							<th style="text-align: center; width: 50px;">Size</th>
							<th style="text-align: center; width: 50px;">Color</th>
							<th style="text-align: center; width: 50px;">Local</th>
							<th style="text-align: center; width: 50px;">Central</th>
							<th style="text-align: center; width: 50px;">SGST (%)</th>
							<th style="text-align: center; width: 50px;">CGST (%)</th>
							<th style="text-align: center; width: 50px;">IGST (%)</th>
							<th style="text-align: center; width: 50px;">MRP</th>
							<th style="text-align: center; width: 50px;">Purchase Rate</th>
							<th style="text-align: center; width: 50px;">Purchase
								Discount</th>
							<th style="text-align: center; width: 50px;">Cost/Box</th>
							<th style="text-align: center; width: 50px;">Retail Rate</th>
							<th style="text-align: center; width: 50px;">Distributor
								Rate</th>
							<th style="text-align: center; width: 50px;">Special Rate</th>
							<th style="text-align: center; width: 50px;">Barcode</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><i class="fa fa-remove"
								style="font-size: 18px; color: red; padding: 2px"></i></td>
							<td><textarea rows="1" name="alias" id="alias"
									style="text-transform: uppercase; width: 250px;"></textarea></td>

							<%
								try {

									connection = DriverManager.getConnection(connectionUrl + database, userid, password);

									statement = connection.createStatement();
									resultSet = statement.executeQuery("select * from sizes");

									System.out.println(resultSet);
									System.out.println(resultSet2);
							%>

							<td><select name="size">
									<option>SELECT</option>
									<%
										while (resultSet.next()) {
									%>

									<option><%=resultSet.getString("size")%></option>
									<%
										}
									%>
							</select></td>

							<td><select name="color">
									<option>ANY</option>
									<%
										resultSet2 = statement.executeQuery("select * from color");
											while (resultSet2.next()) {
									%>
									<option><%=resultSet2.getString("colors")%></option>
									<%
										}
									%>
							</select></td>


							<%
								//**Should I input the codes here?**
								} catch (Exception e) {
									out.println("wrong entry" + e);
								}
							%>
							<td><select name="local"
								style="text-align: center; width: 110px;"><option
										value="1">TAXABLE</option>
									<option value="2">NON TAXABLE</option>
									<option value="3">TAX EXEMPT</option>
							</select></td>
							<td><select name="central"
								style="text-align: center; width: 110px;"><option
										value="1">TAXABLE</option>
									<option value="2">NON TAXABLE</option>
									<option value="3">TAX EXEMPT</option>
							</select></td>
							<td><input type="text" name="sgst" /></td>
							<td><input type="text" name="cgst" /></td>
							<td><input type="text" name="igst" /></td>
							<td><input type="text" name="mrp" /></td>
							<td><input type="text" name="purchaserate" /></td>
							<td><input type="text" name="purchasediscount" /></td>
							<td><input type="text" name="costperbox" /></td>
							<td><input type="text" name="retailrate" /></td>
							<td><input type="text" name="distributorrate" /></td>
							<td><input type="text" name="specialrate" /></td>
							<td><input type="text" name="barcode" /></td>

						</tr>


					</tbody>
				</table>
			</div>
			<div onclick="insRow()" class="btn btn-link add-row"
				id="addTableLine">
				<i class="fas fa-plus-circle"></i> Add another line
			</div>

			<script>
				function addRow() {

					var table = document.getElementById("customers");
					var counter = table.rows.length;
					var row = table.insertRow(1);
					var cell1 = row.insertCell(0);
					var cell2 = row.insertCell(1);
					var cell3 = row.insertCell(2);
					var cell4 = row.insertCell(3);
					var cell5 = row.insertCell(4);
					var cell6 = row.insertCell(5);
					var cell7 = row.insertCell(6);
					var cell8 = row.insertCell(7);
					var cell9 = row.insertCell(8);
					var cell10 = row.insertCell(9);
					var cell11 = row.insertCell(10);
					var cell12 = row.insertCell(11);
					var cell13 = row.insertCell(12);
					var cell14 = row.insertCell(13);
					var cell15 = row.insertCell(14);
					var cell16 = row.insertCell(15);
					var cell17 = row.insertCell(16);

				}

				function deleteRow(row) {
					var i = row.parentNode.parentNode.rowIndex;
					document.getElementById('customers').deleteRow(i);
				}

				function insRow() {
					var x = document.getElementById('customers');
					var new_row = x.rows[1].cloneNode(true);
					var len = x.rows.length;
					new_row.cells[0].innerHTML = len;

					var inp1 = new_row.cells[1].getElementsByTagName('input')[2];
					inp1.id += len;
					inp1.value = '';
					var inp2 = new_row.cells[2].getElementsByTagName('input')[2];
					inp2.id += len;
					inp2.value = '';
					x.appendChild(new_row);
				}
			</script>
			<br> <br>
			<div>
				<input type="submit" value="Save" class="btn btn-primary"> <a
					href="Items.jsp">
					<button type="button" class="btn">Cancel</button>
				</a>
			</div>
		</form>
	</div>
</body>

</html>
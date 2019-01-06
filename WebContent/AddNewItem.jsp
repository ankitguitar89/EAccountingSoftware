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
	padding-top: 10px;
	padding-bottom: 10px;
	text-align: center;
	background-color: #4CAF50;
	color: white;
}
</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$(".add-row")
								.click(
										function() {
											var alias = $("#alias").val();

											var mrp = $("#mrp").val();
											var purchaserate = $(
													"#purchaserate").val();
											var purchasediscount = $(
													"#purchasediscount").val();
											var retailrate = $("#retailrate")
													.val();
											var distributorrate = $(
													"#distributorrate").val();
											var specialrate = $("#specialrate")
													.val();
											var sgst = $("#sgst").val();
											var cgst = $("#cgst").val();
											var igst = $("#igst").val();

											var markup = "<tr><td> <textarea rows='1' name='alias' style='text-transform:uppercase; width:250px;' value='"+alias+"'></textarea>"
													+ "</td>"
													+ "<td>"
													+ "</td>"
													+ "<td></td>"
													+ "<td><input type='text' value='"+mrp+"' /></td>"
													+ "<td><input type='text' value='"+purchaserate+"' /></td>"
													+ "<td><input type='text' value='"+purchasediscount+"' /></td>"
													+ "<td><input type='text' value='"+retailrate+"' /></td>"
													+ "<td><input type='text' value='"+distributorrate+"' /></td>"
													+ "<td><input type='text' value='"+specialrate+"' /></td>"
													+ "<td><input type='text' value='"+sgst+"' /></td>"
													+ "<td><input type='text' value='"+cgst+"' /></td>"
													+ "<td><input type='text' value='"+igst+"' /></td></tr>";

											$("table tbody").append(markup);
										});

						// Find and remove selected table rows
						$(".delete-row").click(
								function() {
									$("table tbody").find(
											'input[name="record"]').each(
											function() {
												if ($(this).is(":checked")) {
													$(this).parents("tr")
															.remove();
												}
											});
								});
					});
</script>
</head>
<body>
	<%@include file="LeftNavMenu.html"%>

	<div class="item-page">
		<h4>Add New Item</h4>
		<hr style="" />
		<form method="post" action="">
			<div class="row">
				<div class="col-sm-2">

					<label for="productCode">Product Code</label>
				</div>
				<div class="col-sm-4">
					<input type="text" name="productCode" /> <i
						class="fas fa-caret-down"></i>
				</div>
				<div class="col-sm-2">

					<label for="barcode">BARCODE</label>
				</div>
				<div class="col-sm-4">
					<input type="text" name="barcode" /> <i class="fas fa-caret-down"></i>
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
					<label for="group">Group</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="group" /> <i class="fas fa-caret-down"></i>
				</div>

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
					<label for="hsn">Conversion Unit:</label>
				</div>

				<div class="col-sm-4">
					<input type="text" name="hsn" /> Pcs/Box
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
							<th style="text-align: center; width: 50px;">LOCAL</th>
							<th style="text-align: center; width: 50px;">CENTRAL</th>
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
						</tr>
					</thead>
					<tbody>
						<tr>
						<td>
						
						<i class="fa fa-remove" style="font-size:18px;color:red; padding:2px"></i></td>
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

							<td><select>
									<option>SELECT</option>
									<%
										while (resultSet.next()) {
									%>

									<option><%=resultSet.getString("size")%></option>
									<%
										}
									%>
							</select></td>

							<td><select>
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
							<td><select style="text-align: center; width: 110px;"><option
										value="1">TAXABLE</option>
									<option value="2">NON TAXABLE</option>
									<option value="3">TAX EXEMPT</option>
							</select></td>
							<td><select style="text-align: center; width: 110px;"><option
										value="1">TAXABLE</option>
									<option value="2">NON TAXABLE</option>
									<option value="3">TAX EXEMPT</option>
							</select></td>
							<td><input type="text" id="sgst" /></td>
							<td><input type="text" id="cgst" /></td>
							<td><input type="text" id="igst" /></td>
							<td><input type="text" id="mrp" /></td>
							<td><input type="text" id="purchaserate" /></td>
							<td><input type="text" id="purchasediscount" /></td>
							<td><input type="text" id="costperbox" /></td>
							<td><input type="text" id="retailrate" /></td>
							<td><input type="text" id="distributorrate" /></td>
							<td><input type="text" id="specialrate" /></td>


						</tr>


					</tbody>
				</table>
			</div>
			<div class="btn btn-link add-row" id="addTableLine">
				<i class="fas fa-plus-circle"></i> Add another line
			</div>

			<br> <br>
			<div>
				<button type="button" class="btn btn-success">Save</button>
				<a href="Items.jsp">
					<button type="button" class="btn">Cancel</button>
				</a>
			</div>
		</form>
	</div>
</body>

</html>
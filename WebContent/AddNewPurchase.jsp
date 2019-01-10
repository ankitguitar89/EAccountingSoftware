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
		<form method="post" action="processPurchase.jsp">
			
				Name: <input type="text" name="name" style="width:50%"> 
			<br><br>	Bill Date: <input type="date" style="text-align:center;" name="billdate">
			
				Entry No: <input type="text" name="entrynum">
				Party No: <input type="text" name="partynum">
				Type: <select name="type">
					<option>Local</option>
					<option>Central</option>
				</select>
			<br>
			<br>

			<div style="overflow-x: auto; font-size: small;">
				<table id="customers" style="text-align: center;">
					<thead>
						<tr style="background-color: #f9f9f9; color: #777;">
							<th style="text-align: center; width: 140px;">Product</th>
							<th style="text-align: center; width: 50px;">MRP</th>
							<th style="text-align: center; width: 50px;">Box</th>
							<th style="text-align: center; width: 50px;">Pcs</th>
							<th style="text-align: center; width: 50px;">Purchase
								Rate/Box</th>
							<th style="text-align: center; width: 50px;">Discount 1 (%)</th>
							<th style="text-align: center; width: 50px;">Discount 2 (%)</th>
							<th style="text-align: center; width: 50px;">Amount</th>
						</tr>
					</thead>
					<tbody>
						<tr>
									<%
										try {

											connection = DriverManager.getConnection(connectionUrl + database, userid, password);
											statement = connection.createStatement();
											resultSet = statement.executeQuery("select alias from items;");
									%>

							<td style="text-align: center; ">
							<select
								name="productname" style="width: 95%;">
									<option></option>
									<% 	while (resultSet.next()) {%>
	
									<option><%=resultSet.getString("alias")%></option>
									<% } %>
							</select></td>
							<%
								//**Should I input the codes here?**
								} catch (Exception e) {
									out.println("wrong entry" + e);
								}
							%>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="mrp" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="box" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="pcs" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="purchaserate" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="disc1" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="disc2" /></td>
							<td style="text-align: center; width: 50px;"><input
								type="text" style="width: 95%;" name="amount" /></td>
						</tr>
					</tbody>
				</table>
			</div>


			<div class="btn btn-link add-row" id="addTableLine">
				<i class="fas fa-plus-circle"></i> Add another line
			</div>

			<br> <br>
			<div>
				<div
					style="height: 200px; width: 25%; border: solid 1px; margin: 5px; padding: 10px; display: inline-block; vertical-align: top;">
					Due Date: <input type="date" name="duedate"
						style="float: right; width: 60%; text-align: center;" /><br>
					<br> Remarks:
					<textarea name="remarks"
						style="float: right; width: 60%; height: 60%;"></textarea>
				</div>
				<div
					style="margin-left: 30%; height: 200px; width: 30%; border: solid 1px; float: center; margin: 5px; padding: 10px; display: inline-block; vertical-align: top;">
					Payment Mode: <select name="paymentmode"
						style="float: right; width: 40%;"><option></option>
						<option>Cheque</option>
						<option>Online Transfer</option>
						<option>Cash</option></select> <br> <br> Amount Paid: <input
						type="text" name="amountpaid" style="float: right; width: 40%;" /><br>
					<br> Transaction Date: <input type="date"
						name="transactiondate"
						style="float: right; width: 40%; text-align: center;" /><br>
					<br> Transaction Reference: <input type="text"
						name="reference" style="float: right; width: 40%;" />

				</div>

				<div
					style="margin-left: 50%; height: 260px; width: 40%; border: solid 1px; float: right; margin: 5px; padding: 10px; display: inline-block; vertical-align: top;">
					<p style="line-height: 1.2;">
						Total before Discount<input type="text"
							style="float: right; width: 30%; background-color:#f6f6f6;" readonly>
					</p>
					<p style="line-height: 1.2;">
						Discount <input type="text" style="width: 15%; margin-left: 25%;">
						% <input type="text" style="float: right; width: 30%; background-color:#f6f6f6;" readonly>
					</p>
					<p style="line-height: 1.2;">
						Shipping Charges <input type="text"
							style="float: right; width: 30%;">
					</p>
					<p style="line-height: 1.2;">
						SGST <input type="text" style="width: 15%; margin-left: 28%;">
						% <input type="text" style="float: right; width: 30%; background-color:#f6f6f6;" readonly>
					</p>
					<p style="line-height: 1.2;">
						CGST <input type="text" style="width: 15%; margin-left: 28%;">
						% <input type="text" style="float: right; width: 30%; background-color:#f6f6f6;" readonly>
					</p>
					<p style="line-height: 1.2;">
						IGST <input type="text" style="width: 15%; margin-left: 29%;">
						% <input type="text" style="float: right; width: 30%; background-color:#f6f6f6;" readonly>
					</p>
					<p style="line-height: 1.5;">
						Total Tax<input type="text" style="float: right; width: 30%; background-color:#f6f6f6;"
							readonly>
					</p>
					<strong>Total Payment<input type="text" readonly
						style="float: right; width: 30%; background-color:#f6f6f6;" ></strong>
				</div>
			</div>


			<br> <br>

			<div>
				<input type="button" class="btn btn-success" value="Save"> <a
					href="Purchase.jsp">
					<button type="button" class="btn">Cancel</button>
				</a>
			</div>
		</form>
	</div>
</body>
</html>
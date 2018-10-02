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
%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@include file="LeftNavMenu.html"%>

	<div class="item-page">
		<h4>All Items</h4>

		<input type="text" id="myInput" onkeyup="myFunction()"
			placeholder="Search for items.."> <a href="AddNewItem.jsp"><input
			type="button" id="addNewItemBtn" value="Add New Item"
			class="btn btn-success"> </a>
		<div style="overflow-x: auto;">
			<table class="table table-striped" id="myTable">

				<thead class="tableHeader">
					<tr>
						<th>
							<div class="ckbox">
								<input type="checkbox" id="checkbox1"> <label
									for="checkbox1"></label>
							</div>
						</th>
						<th>DATE</th>
						<th>INVOICE#</th>
						<th>CUSTOMER</th>
						<th>STATUS</th>
						<th>DUE DATE</th>
						<th>AMOUNT</th>
						<th>BALANCE AMOUNT</th>
					</tr>
				</thead>
				<tbody>

					<%
						try {
							connection = DriverManager.getConnection(connectionUrl + database, userid, password);
							statement = connection.createStatement();
							String sql = "select * from items";
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
					%>
					<tr>
						<td>
							<div class="ckbox">
								<input type="checkbox" id="checkbox1"> <label
									for="checkbox1"></label>
							</div>
						</td>
						<td></td>
						<td><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("brand")%></td>
						<td><%=resultSet.getString("productcolor")%></td>
						<td><%=resultSet.getString("size")%></td>
						<td><%=resultSet.getString("unit")%></td>
						<td><%=resultSet.getString("rate")%></td>
						<td><%=resultSet.getString("description")%></td>

					</tr>
					<%
						}
							connection.close();
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>

				</tbody>

			</table>
		</div>

	</div>


</body>
</html>
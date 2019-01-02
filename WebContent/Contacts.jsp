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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
#myInput {
	background-image: url('/css/searchicon.png');
	/* Add a search icon to input */
	background-position: 10px 12px; /* Position the search icon */
	background-repeat: no-repeat; /* Do not repeat the icon image */
	width: 40%; /* Full-width */
	font-size: 12px; /* Increase font-size */
	padding: 5px; /* Add some padding */
	border: 1px solid #ddd; /* Add a grey border */
	margin-bottom: 10px; /* Add some space below the input */
}

.item-page {
	margin-left: 160px;
}

.tableHeader {
	color: #1a0dab;
	text-align: left;
	vertical-align: middle;
	padding: 10px;
	font-weight: 700;
	-webkit-font-smoothing: antialiased;
}

th, td {
	font-family: ProximaNovaRegular, 'Source Sans Pro', Helvetica, Arial,
		sans-serif;
	word-wrap: break-word;
	word-break: keep-all;
	font-size: 12px;
	border-bottom: 1px solid #ddd;
}

td.capitalize {
	text-transform: capitalize;
}

tr:hover {
	background-color: #f5f5f5;
}
</style>
<script>
	function myFunction() {
		// Declare variables 
		var input, filter, table, tr, td, i;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");

		// Loop through all table rows, and hide those who don't match the search query
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[1];
			if (td) {
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	}
</script>
</head>
<body>
	<%@include file="LeftNavMenu.html"%>
	
	<div class="item-page">
	<h4>All Contacts</h4>

	
		<input type="text" id="myInput" onkeyup="myFunction()"
			placeholder="Search for contact name.."> <a
			href="AddNewContact.jsp"><input type="button"
			id="addNewContactBtn" value="Add New Contact" class="btn btn-success">
		</a>


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
						<th>CONTACT PERSON</th>
						<th>COMPANY NAME</th>
						<th>EMAIL</th>
						<th>PRIMARY PHONE#</th>
						<th>ALTERNATE PHONE#</th>
						<th>ADDRESS</th>
					</tr>
				</thead>
				<tbody>

					<%
						try {
							connection = DriverManager.getConnection(connectionUrl + database, userid, password);
							statement = connection.createStatement();
							String sql = "select CONCAT(firstName,\" \", lastName) name, company,email, primaryPhone,alternatePhone,address from contact";
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
						<td><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("company")%></td>
						<td><%=resultSet.getString("email")%></td>
						<td><%=resultSet.getString("primaryPhone")%></td>
						<td><%=resultSet.getString("alternatePhone")%></td>
						<td><%=resultSet.getString("address")%></td>

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
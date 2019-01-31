<!--  %@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<title>Select Company & FY</title>
</head>
<body>
	<h4>Select Company & Financial Year</h4>
	<form method="POST" action="OpenCompanyDetails.jsp">

		<%
			try {

				connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
				resultSet = statement.executeQuery("select distinct cname from usercompany;");
		%>
		Company: <select name="selectCompany">
			<%
				while (resultSet.next()) {
			%>
			<option><%=resultSet.getString("cname")%></option>
			<%
				}
			%>
		</select> <br>


		<%
						connection = DriverManager.getConnection(connectionUrl + database, userid, password);
				statement = connection.createStatement();
			resultSet = statement.executeQuery("select distinct fy from usercompany;");
		%>
		FY: <select name="selectFy">
			<%
				while (resultSet.next()) {
			%>
			<option><%=resultSet.getString("fy")%></option>
			<%
				}
			%>
		</select>

		<%
			//**Should I input the codes here?**
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
		<br> <br> <input type="button" class="btn"  value="Reset"> 
		<input type="submit" class="btn btn-success" value="Submit">
	</form>
</body>
</html>
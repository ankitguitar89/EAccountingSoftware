
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String name = request.getParameter("itemName");
	String description = request.getParameter("desc");
	String brand = request.getParameter("brand");
	String productColor = request.getParameter("productColor");
	String size = request.getParameter("size");
	String unit = request.getParameter("unit");
	String rate = request.getParameter("rate");

	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "root");
		Statement st = conn.createStatement();

		int i = st.executeUpdate(
				"insert into items(name,description,brand, productcolor, size, unit,rate)values('" + name
						+ "','" + description + "','" + brand + "','" + productColor + "','" + size + "','"
						+ unit + "','" + rate + "');");
		out.println("Data is successfully inserted!");
		System.out.println("insert into items(name,description,brand, productcolor, size, unit,rate)values('" + name
		+ "','" + description + "','" + brand + "','" + productColor + "','" + size + "','"
		+ unit + "','" + rate + "');");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
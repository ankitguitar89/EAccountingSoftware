
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String company = request.getParameter("company");
	String primaryPhone = request.getParameter("primaryPhone#");
	String alternatePhone = request.getParameter("alternatePhone#");
	String email = request.getParameter("email");
	String receivable = request.getParameter("receivable");

	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "root");
		Statement st = conn.createStatement();

		int i = st.executeUpdate(
				"insert into contact (firstName,lastName,company,primaryPhone,alternatePhone,receivable,createdAt,email)values('" + firstName
						+ "','" + lastName + "','" + company + "','" + primaryPhone + "','" + alternatePhone + "','"
						+ receivable + "',"+"CURRENT_TIMESTAMP" + ",'"+ email + "');");
		out.println("Data is successfully inserted!");
		System.out.println(	"insert into contact (firstName,lastName,company,primaryPhone,alternatePhone,receivable,createdAt,email)values('" + firstName
				+ "','" + lastName + "','" + company + "','" + primaryPhone + "','" + alternatePhone + "','"
				+ receivable + "',"+"CURRENT_TIMESTAMP" + ",'"+ email + "');");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
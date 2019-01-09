<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "accounts";
String userid = "root";
String password = "root";

String name= request.getParameter("name"); 
String billdate= request.getParameter("billdate"); 
String entrynum= request.getParameter("entrynum"); 
String partynum= request.getParameter("partynum"); 
String type= request.getParameter("type"); 
String productname= request.getParameter("productname"); 
String mrp= request.getParameter("mrp"); 
String box= request.getParameter("box"); 
String pcs= request.getParameter("pcs"); 
String purchaserate= request.getParameter("purchaserate"); 
String disc1= request.getParameter("disc1"); 
String disc2= request.getParameter("disc2"); 
String amount= request.getParameter("amount"); 
String term= request.getParameter("term"); 
String duedate= request.getParameter("duedate"); 


	try {
		Class.forName(driver).newInstance();
		Connection conn = DriverManager.getConnection(connectionUrl + database, userid, password);
		Statement st = conn.createStatement();
		
		st.executeUpdate("INSERT INTO purchase(name,billdate,entrynum,partynum,type,productname,mrp,box,pcs,purchaserate,disc1,disc2,amount,term,duedate,creationdate)"
				+"values('" +name+ "','" + billdate+ "','" + entrynum+ "','" + partynum+ "','" + type+ "','" + productname+ "','" + mrp+ "','" + box+ "','" +pcs+ "','"+purchaserate+ "','"+disc1+ "','"+disc2+ "','"+amount+ "','"+term+ "','" +duedate+ "','" +"CURRENT_TIMESTAMP"+ "');");
		RequestDispatcher rd=request.getRequestDispatcher("Purchase.jsp");
		rd.forward(request,response);
		
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
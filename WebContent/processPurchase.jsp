<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "accounts";
String userid = "root";
String password = "root";

String name= request.getParameter("companyname"); 
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
String duedate= request.getParameter("duedate");

String remarks= request.getParameter("remarks");
String paymentmode= request.getParameter("paymentmode"); 
String amountpaid= request.getParameter("amountpaid");
String transactiondate= request.getParameter("transactiondate");
String reference= request.getParameter("reference"); 
String discount= request.getParameter("discount");
String shippingcharges= request.getParameter("shippingcharges"); 
String ssgst= request.getParameter("ssgst"); 
String scgst= request.getParameter("scgst"); 
String sigst= request.getParameter("sigst");
String totaltax= request.getParameter("totaltax");

	try {
		Class.forName(driver).newInstance();
		Connection conn = DriverManager.getConnection(connectionUrl + database, userid, password);
		Statement st = conn.createStatement();
		
		st.executeUpdate("INSERT INTO purchase(id,name,billdate,entrynum,partynum,type,productname,mrp,box,pcs,purchaserate,disc1,disc2,amount,duedate,creationdate,"
				+"remarks, paymentmode, amountpaid, transactiondate, reference, discount, shippingcharges, ssgst, scgst, sigst, totaltax)"
				+"values('NULL','" +name+ "','" + billdate+ "','" + entrynum+ "','" + partynum+ "','" + type+ "','" + productname+ "','" + mrp+ "','" + box+ "','" +pcs+ "','"+purchaserate+ "','"+disc1+ "','"+disc2+ "','"+amount+ "','" +duedate+ "','" +"CURRENT_TIMESTAMP"
				+"','" +remarks+ "','" +paymentmode+ "','" +amountpaid+ "','"+transactiondate+ "','" +reference+ "','"+discount+ "','" +shippingcharges
				+ "','"+ssgst+ "','" +scgst+ "','" +sigst+ "','"+totaltax+ "');");
		
		RequestDispatcher rd=request.getRequestDispatcher("Purchase.jsp");
		rd.forward(request,response);
		
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
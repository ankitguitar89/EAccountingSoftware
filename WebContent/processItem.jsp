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


String productcode = request.getParameter("productcode"); 
String company = request.getParameter("company");
String brand = request.getParameter("brand");
String pgroup = request.getParameter("pgroup");
String category = request.getParameter("category");
String shape = request.getParameter("shape");
String hsn = request.getParameter("hsn");
String conversionunit = request.getParameter("conversionunit");
String alias= request.getParameter("alias");
String size= request.getParameter("size");
String color= request.getParameter("color");
String local= request.getParameter("local");
String central= request.getParameter("central");
String sgst = request.getParameter("sgst");
String cgst = request.getParameter("cgst");
String igst = request.getParameter("igst");
String mrp = request.getParameter("mrp");
String purchaserate = request.getParameter("purchaserate");
String purchasediscount = request.getParameter("purchasediscount");
String costperbox = request.getParameter("costperbox");
String retailrate = request.getParameter("retailrate");
String distributorrate = request.getParameter("distributorrate");
String specialrate = request.getParameter("specialrate");
String barcode = request.getParameter("barcode");
alias=alias.toUpperCase();
	try {
		Class.forName(driver).newInstance();
		Connection conn = DriverManager.getConnection(connectionUrl + database, userid, password);
		Statement st = conn.createStatement();
		
		st.executeUpdate("INSERT INTO items(productcode, company, brand, pgroup, category, shape, hsn, conversionunit, alias, size, color,local,central,sgst, cgst, igst, mrp,purchaserate,purchasediscount,costperbox,retailrate,distributorrate,specialrate,barcode)values('" +productcode+ "','" + company+ "','" + brand+ "','" + pgroup+ "','" + category+ "','" + shape+ "','" + hsn+ "','" + conversionunit+ "','" +alias+ "','"+size+ "','"+color+ "','"+local+ "','"+central+ "','"+ sgst+ "','" + cgst+ "','" + igst+ "','" + mrp+ "','" +purchaserate+ "','" +purchasediscount+ "','" +costperbox+ "','" +retailrate+ "','" +distributorrate+ "','" +specialrate+ "','" +barcode+ "');");
		RequestDispatcher rd=request.getRequestDispatcher("Items.jsp");
		rd.forward(request,response);
		
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
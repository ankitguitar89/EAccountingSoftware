package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

/**
 * Servlet implementation class addStaff
 */
@WebServlet("/addStaff")
public class addStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addStaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String priPhone = request.getParameter("primaryPhone");
		String altPhone = request.getParameter("alternatePhone");
		String email = request.getParameter("email");
		String joiningDate = request.getParameter("joiningDate");
		String address= request.getParameter("address");

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "root");
			Statement st = conn.createStatement();

			int i = st.executeUpdate(
			"INSERT INTO STAFF(firstname , lastname ,gender , dob , primarycontact , alternatecontact , email , joiningdate , address ,creationdate)"+
			"VALUES ('"+fName+ "','" + lName + "','" + gender + "','" + dob+ "','" + priPhone+ "','"+ altPhone+ "','"+ email+ "','"
					+ joiningDate + "','" + address+ "');");
			

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

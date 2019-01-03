package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addContact
 */
@WebServlet("/addContact")
public class addContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addContact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String company = request.getParameter("company");
		String primaryPhone = request.getParameter("primaryPhone");
		String alternatePhone = request.getParameter("alternatePhone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String paymentTerms = request.getParameter("paymentTerms");
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accounts", "root", "root");
			Statement st = conn.createStatement();

			st.executeUpdate(
					"insert into contact (firstName,lastName,company,primaryPhone,alternatePhone,address,createdAt,email,paymentterms)values('" + firstName
							+ "','" + lastName + "','" + company + "','" + primaryPhone + "','" + alternatePhone + "','"
							+ address + "',"+"CURRENT_TIMESTAMP" + ",'"+ email + "','" +paymentTerms+ "');");
//			out.println("Data is successfully inserted!");
			System.out.println(	"insert into contact (firstName,lastName,company,primaryPhone,alternatePhone,address,createdAt,email,paymentterms)values('" + firstName
					+ "','" + lastName + "','" + company + "','" + primaryPhone + "','" + alternatePhone + "','"
					+ address + "',"+"CURRENT_TIMESTAMP" + ",'"+ email + "','" +paymentTerms+"');");
			
			RequestDispatcher rd=request.getRequestDispatcher("Contacts.jsp");
			rd.forward(request,response);
			
			
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	}

}

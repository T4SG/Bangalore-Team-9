

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeLogin
 */
@WebServlet("/EmployeeLogin")
public class EmployeeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html");
		String name = request.getParameter("username").toString();
		String password = request.getParameter("Password").toString();
		String roll = request.getParameter("roll").toString(); 
		Connection connection=null;
		ResultSet rs=null;
		
		System.out.println(roll);
		if(roll.equals("student"))
		{
			String retriveQuery="SELECT * FROM  `STUDENT` WHERE SNAME =? AND PASSWORD =? ";
			try{
				connection=DataBaseConnectionClass.getConnection();
				PreparedStatement pst = connection.prepareStatement(retriveQuery);
				pst.setString(1, name);
				pst.setString(2, password);
				rs=pst.executeQuery();
				PrintWriter writer=response.getWriter();
				if(rs.next())
				{ 
					System.out.print("in the if loop 63");
					writer.print("student login success");
		//			response.sendRedirect("http://www.google.com");	
					}
				else
				{
					System.out.print("in the else loop 69");
					writer.print("student login not success");
		//			response.sendRedirect("http://www.facebook.com");
				}
				}catch(Exception e)
				{
					System.out.println(e);
				}

		}
		else if(roll.equals("CenterHeads"))
		{
			System.out.print("in the if loop 81");

			String retriveQuery="SELECT * FROM  `EMPLOYEE` WHERE EName =? AND Password =? AND ROLE_ID = 1";
			try{
				connection=DataBaseConnectionClass.getConnection();
				PreparedStatement pst = connection.prepareStatement(retriveQuery);
				pst.setString(1, name);
				pst.setString(2, password);
				rs=pst.executeQuery();
				PrintWriter writer=response.getWriter();
				if(rs.next())
				{ 
					System.out.print("in the if loop 91");
					writer.print("central heads employee login success");
//					response.sendRedirect("http://www.gmail.com");
				}
				else
				{
					System.out.print("in the else loop 97");
					writer.print("central heads employee login not success");
	//				response.sendRedirect("http://www.quora.com");
				}
				}catch(Exception e)
				{
					System.out.println(e);
				}
		}
		else if(roll.equals("Mentors"))
		{
			System.out.print("in the if loop 110");

			String retriveQuery="SELECT * FROM  `EMPLOYEE` WHERE EName =? AND Password =? and ROLE_ID = 2";
			try{
				connection=DataBaseConnectionClass.getConnection();
				PreparedStatement pst = connection.prepareStatement(retriveQuery);
				pst.setString(1, name);
				pst.setString(2, password);
				rs=pst.executeQuery();
				PrintWriter writer=response.getWriter();
				if(rs.next())
				{ 
					System.out.print("in the if loop 120");
					writer.print("mentors employee login success");
//					response.sendRedirect("http://www.gmail.com");
				}
				else
				{
					System.out.print("in the else loop 126");
					writer.print("mentors employee login not success");
	//				response.sendRedirect("http://www.quora.com");
				}
				}catch(Exception e)
				{
					System.out.println(e);
				}

		}
	}

}

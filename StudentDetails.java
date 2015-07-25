

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

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Servlet implementation class StudentDetails
 */
@WebServlet("/StudentDetails")
public class StudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("username").toString();
		Connection connection=null;
		ResultSet rs=null;
		
			String retriveQuery=" SELECT * FROM  `STUDENT` WHERE SNAME =? ";
			try{
				connection=DataBaseConnectionClass.getConnection();
				PreparedStatement pst = connection.prepareStatement(retriveQuery);
				pst.setString(1, name);
				rs=pst.executeQuery();
				PrintWriter writer=response.getWriter();
				JSONArray array = new JSONArray();
				if(rs.next())
				{ 
					System.out.print("in the if loop 63");
					JSONObject object = new JSONObject();
					object.put("sid", rs.getInt(1));
					object.put("phonenumber", rs.getString(6));
					object.put("address", rs.getString(7));
					object.put("amountpaid", rs.getInt(10));
					object.put("sid", rs.getInt(1));
					object.put("sid", rs.getInt(1));
					object.put("sid", rs.getInt(1));
					
		//			response.sendRedirect("http://www.google.com");	
				}

				}catch(Exception e)
				{
					System.out.println(e);
				}

		}

		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

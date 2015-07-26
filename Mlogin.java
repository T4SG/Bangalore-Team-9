

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
 * Servlet implementation class Mlogin
 */
@WebServlet("/Mlogin")
public class Mlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html");
		String name = request.getParameter("username").toString();
		String password = request.getParameter("Password").toString();
		Connection connection=null;
		ResultSet rs=null;
		
			String retriveQuery="SELECT * FROM  `EMPLOYEE` WHERE EMP_ID =? AND PASSWORD =? ";
			try{
				connection=DataBaseConnectionClass.getConnection();
				PreparedStatement pst = connection.prepareStatement(retriveQuery);
				pst.setString(1, name);
				pst.setString(2, password);
				rs=pst.executeQuery();
				PrintWriter writer=response.getWriter();
				JSONArray array = new JSONArray();
				if(rs.next())
				{ 
					System.out.print("in the if loop 63");
					JSONObject object = new JSONObject();
					object.put("output", 1);
					//array.put(object);
					writer.print(object.toString());
					//	writer.print(1);
		//			response.sendRedirect("http://www.google.com");	
				}
				else
				{
					JSONObject object = new JSONObject();
					object.put("output", 0);
					//array.put(object);
					writer.print(object.toString());
					
		//				writer.print(0);
		//			response.sendRedirect("http://www.facebook.com");
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




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
 * Servlet implementation class MCourses
 */
@WebServlet("/MCourses")
public class MCourses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MCourses() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection connection=null;
		ResultSet rs=null;
		
		
		String retriveQuery = " select * from COURSES";
		try{
		connection=DataBaseConnectionClass.getConnection();
		PreparedStatement pst = connection.prepareStatement(retriveQuery);
		rs=pst.executeQuery();
		PrintWriter writer=response.getWriter();
		
		JSONArray array=new JSONArray();
		while(rs.next())
		{ 
			
		String coursename = rs.getString(2);

		JSONObject object=new JSONObject();

		object.put("coursename",coursename);
		
		array.put(object);
		}
	
		writer.print(array.toString());
		
		}catch(Exception e)
		{
			System.out.print(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

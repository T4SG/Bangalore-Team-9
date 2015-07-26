
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mis
 */
@WebServlet("/Mis")
public class Mis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       int npr,npc,npp,npec,nm,nfm,a[];
       int nptp,npntp;
       
     /**
     * @see HttpServlet#HttpServlet()
     */
    public Mis() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
		try{
		con = DataBaseConnectionClass.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT COUNT( * ) FROM STUDENT");
		PrintWriter out = response.getWriter();
		
		if(rs.next())
		{
			npr = rs.getInt(1);
			System.out.println(npr);
//			out.write(npr);
		}
		
		rs = st.executeQuery("SELECT COUNT( * ) FROM STUDENT WHERE IS_CERTIFIED =  '1' " );
		
		if(rs.next())
		{
			npc = rs.getInt(1);
			System.out.println(npc);

//			out.write(npc);
		}
		
		rs =st.executeQuery("SELECT COUNT( * ) FROM STUDENT WHERE IS_PLACED= '1' ");
		
		if(rs.next())
		{
			npp = rs.getInt(1);
			System.out.println(npp);

//			out.write(npp);

		}
		
		rs =st.executeQuery("SELECT COUNT( * ) , c.NAME FROM STUDENT s JOIN COURSES c ON s.COURSE_ID = c.ID GROUP BY c.ID");
		
		if(rs.next())
		{
			npec = rs.getInt(1);
			System.out.println(npec);

//			out.write(npec);

		}
		
		rs =st.executeQuery("SELECT COUNT( * ),GENDER FROM STUDENT GROUP BY GENDER ");
		
		if(rs.next())
		{
			nfm = rs.getInt(1);
			System.out.println(nfm);

//			out.write(nfm);

		}
		
		if(rs.next())
		{
			nm = rs.getInt(1);
			System.out.println(nm);

//			out.write(nm);

		}
		
/*		rs =st.executeQuery("SELECT CEN_NAME, COUNT( * ) FROM STUDENT s JOIN (SELECT c.CEN_NAME, e.EMP_ID AS emp FROM EMPLOYEE e, CENTERS c WHERE c.CENTER_HEAD_ID = e.EMP_ID) AS temp ON s.EID = temp.emp GROUP BY temp.emp");
		int i=0;
		while(rs.next())
		{
			a[i++] = rs.getInt(2);
		}
*/
		String query = "SELECT SUM(CASE WHEN rem =0 THEN 1 ELSE 0 END ) AS TOTAL_ZEROS, COUNT( * ) - SUM(CASE WHEN rem =0 THEN 1 ELSE 0	END ) FROM final_fee_list)";
				
		if(rs.next())
		{
			nptp = rs.getInt(1);
			npntp = rs.getInt(2);
			System.out.println(nptp);
			System.out.println(npntp);
			
//			out.write(nptp);
//			out.write(npntp);
		}
		
		out.write(npr+" "+npc+" "+npp+" "+npec+" "+nm+" "+nfm);
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

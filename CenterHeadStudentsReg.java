


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import java.security.*;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.*;





/**
 * Servlet implementation class CenterHeadStudentsReg
 */
@WebServlet("/CenterHeadStudentsReg")
public class CenterHeadStudentsReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
	private static final String ALGO = "AES";

	private static final byte[] keyValue = 
		       new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't',
		'S', 'e', 'c', 'r','e', 't', 'K', 'e', 'y' };
	    


	
	
	public static String encrypt(String Data) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        return encryptedValue;
    }

    public static String decrypt(String encryptedData) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
        byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
        byte[] decValue = c.doFinal(decordedValue);
        String decryptedValue = new String(decValue);
        return decryptedValue;
    }
    private static Key generateKey() throws Exception {
        Key key = new SecretKeySpec(keyValue, ALGO);
        return key;
}
	
	public CenterHeadStudentsReg() {
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

		
		String name = request.getParameter("name");
		System.out.println(name);
		String dob = request.getParameter("dateofbirth");
		System.out.println(name);
		
		String lastCrawlDate = "2014-01-28";
		Date utilDate;
		try {
			String password="keerthi";
			password = encrypt(password);
			utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(lastCrawlDate);
		
		// because PreparedStatement#setDate(..) expects a java.sql.Date argument
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime()); 

		
		int age = Integer.parseInt(request.getParameter("age"));
		System.out.print(age);
		String address = request.getParameter("address");
		System.out.println(address);
		int Payment = Integer.parseInt(request.getParameter("payment"));
		System.out.println(Payment);
		String gender = request.getParameter("optradio"), choice = request.getParameter("department");
		System.out.println(gender);
		PrintWriter writer = response.getWriter();
				Connection con = null;
		
		con = DataBaseConnectionClass.getConnection();
		
		
	/*	PreparedStatement pe = con.prepareStatement("INSERT INTO `pratham`.`STUDENT` (`SNAME`, `DOB`, `AGE`, `GENDER`, `PH_NO`, `ADDRESS`, `EMAIL`, `COURSE_ID`, `AMT_PAID`, `SPONSOR_ID`, `IS_PLACED`, `IS_DROPPED`, `IS_CERTIFIED`, `GRADE`, `PLACEMENT_ID`, `PASSWORD`, `BATCH_ID`, `ASSESMENT_SCORE`, `EID`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		pe.setString(1, name);
		pe.setDate(2,  sqlDate);
		pe.setInt(3,age);
		pe.setString(4,gender);
		pe.setString(5,"");
		pe.setString(6,address);
		pe.setString(7,null);
		pe.setString(8,"c01");
		pe.setInt(9,Payment);
		pe.setString(10,"s01");
		pe.setInt(11,0);
		pe.setInt(12,0);
		pe.setInt(13,0);
		pe.setString(14,null);
		pe.setString(15,null);
		pe.setString(16,null);
		pe.setString(17,"b01");
		pe.setInt(18,0);
		pe.setString(19,"e01");
		
		*/
		PreparedStatement pst = con.prepareStatement("INSERT INTO `pratham`.`STUDENT` (`SNAME`, `DOB`, `AGE`, `GENDER`, `PH_NO`, `ADDRESS`, `EMAIL`, `COURSE_ID`, `AMT_PAID`, `SPONSOR_ID`, `IS_PLACED`, `IS_DROPPED`, `IS_CERTIFIED`, `GRADE`, `PLACEMENT_ID`, `PASSWORD`, `MODIFIED_TIME`, `BATCH_ID`, `RESULT_ID`, `ASSESMENT_SCORE`, `EID`) VALUES (?, '2015-07-09', '2', 'f', '555555555', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, 'c03', ? , 's02', NULL, NULL, NULL, NULL, NULL,?, CURRENT_TIMESTAMP, 'b02', NULL, '50', 'E02')");
		pst.setString(1, name);
		pst.setInt(2, Payment);
		pst.setString(3,password);
		boolean be = pst.execute();
		if(!be)
		{
			writer.print("done");
		}
		else
		{
			writer.print("not done");
		}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		
	}

}


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DataBaseConnectionClass {

	public static Connection getConnection()
	{
	Connection con=null;
	String DriverName="com.mysql.jdbc.Driver";
	String userName="root";
	String password="code4good";
	String driverManager="jdbc:mysql://localhost:3306/pratham";

	try {
	Class.forName(DriverName);
	con=DriverManager.getConnection(driverManager, userName, password);
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	System.out.println("Driver Get's Loaded");
	return con;
	}
	
}

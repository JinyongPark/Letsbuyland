package land.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBUtil {
	
	private static Connection con;	
	private static String url;
	private static String user;
	private static String password;
	
	public static Connection getConnection () {
		
		try {
			url = "jdbc:oracle:thin:@localhost:1521:xe";			
			user = "hr";
			password = "java1234";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con = DriverManager.getConnection(url, user, password);
			
			System.out.println("DB Connection complete");			
			
		} catch (Exception e) {
			System.out.println(e.toString());
			System.out.println("DB connection error");
		}
		
		return con;		
	}
}

package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad18
 */
@WebServlet("/Brad18")
public class Brad18 extends HttpServlet {
	private Connection conn;
	
    public Brad18() {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		System.out.println("Driver OK");
    		
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/", prop);
    		System.out.println("Connect OK");

    	}catch (Exception e) {
    		System.out.println(e.toString());
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			int rows = add2MySQL();
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	private int add2MySQL() throws Exception {
		if (conn == null && conn.isClosed()) {
			throw new Exception();
		}
		
		String sql = "INSERT INTO user (account,passwd,realname) VALUES (?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ?);
		pstmt.setString(2, ?);
		pstmt.setString(3, ?);
		int count = pstmt.executeUpdate();
		return count;
	}

}

package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad17
 */
@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Brad17() {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		System.out.println("OK");
    	}catch (Exception e) {
    		System.out.println(e.toString());
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		testMySQL();
	}
	
	private void testMySQL() {
		try {
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/iii", prop);
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("INSERT INTO cust (cname,tel,birthday)" + 
					" VALUES ('BradOK','777','2020-01-02')");
			
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}

}

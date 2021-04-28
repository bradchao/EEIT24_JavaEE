package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.utils.BCrypt;

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
					"jdbc:mysql://localhost:3306/iii", prop);
    		System.out.println("Connect OK");

    	}catch (Exception e) {
    		System.out.println(e.toString());
		}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try {
			if (!isAccountDup("amy")) {
				int rows = add2MySQL("amy","123456","Amy");
				System.out.println(rows);
			}else {
				System.out.println("account dup.");
			}
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	private boolean isAccountDup(String account) throws Exception {
		String sql = "SELECT count(*) as count FROM user WHERE account = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		
		return count > 0;
	}
	
	private int add2MySQL(String account, String passwd, String realname) 
			throws Exception {
		if (conn == null && conn.isClosed()) {
			throw new Exception();
		}
		
		String sql = "INSERT INTO user (account,passwd,realname) VALUES (?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		pstmt.setString(2, BCrypt.hashpw(passwd, BCrypt.gensalt()));
		pstmt.setString(3, realname);
		int count = pstmt.executeUpdate();
		return count;
	}

}

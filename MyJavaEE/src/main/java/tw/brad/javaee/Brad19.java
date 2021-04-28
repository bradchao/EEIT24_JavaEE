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

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	private Connection conn;
	public Brad19() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		if (account != null) {
			try {
				if (login(account, passwd)) {
					System.out.println("OK");
				}else {
					System.out.println("Xx");
				}
			}catch(Exception e) {
				System.out.println("sql : " + e);
			}
		}
		
	}
	
	
	private boolean login(String account, String passwd)
		throws Exception {
		
		boolean ret = false;
		
		String sql = "SELECT * FROM user WHERE account = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			// 
			String hasPasswd = rs.getString("passwd");
			if (BCrypt.checkpw(passwd, hasPasswd)) {
				// true
				ret = true;
			}
		}
		
		return ret;
	}
	
}

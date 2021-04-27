package tw.brad.javaee;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String result = request.getParameter("result");
		
		PrintWriter out = response.getWriter();
		String html = loadView();
		out.print(String.format(html, x, y, result));
		response.flushBuffer();
		
	}
	
	private String loadView() {
		StringBuffer sb = new StringBuffer();
		try {
			File source = new File ("C:\\Users\\USER\\git\\repository4\\MyJavaEE\\src\\main\\webapp\\views\\view1.html");
			BufferedReader reader = 
				new BufferedReader(
					new InputStreamReader(
						new FileInputStream(source), "UTF-8"));
			
			
			String line;
			while ( (line = reader.readLine()) != null) {
				sb.append(line);
			}
			reader.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return sb.toString();
	}
	
	

}

package tw.brad.javaee;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
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
		String op = request.getParameter("op");
		String y = request.getParameter("y");
		String result = request.getParameter("result");
		String vfile = request.getParameter("vfile");
		
		String op1 = op.equals("1")?"selected":"";
		String op2 = op.equals("2")?"selected":"";
		String op3 = op.equals("3")?"selected":"";
		String op4 = op.equals("4")?"selected":"";
		
		PrintWriter out = response.getWriter();
		String html = loadView("vfile");
		out.print(String.format(html, x, op1, op2, op3, op4, y, result));
		response.flushBuffer();
		
	}
	
	private String loadView(String viewFile) {
		ServletContext context = getServletContext();
		String viewPath = context.getInitParameter("viewPath");
		System.out.println(viewPath);
		
		StringBuffer sb = new StringBuffer();
		try {
			File source = new File (viewPath, viewFile);
			System.out.println(source.getAbsolutePath());
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

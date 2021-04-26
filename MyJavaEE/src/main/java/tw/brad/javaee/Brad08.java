package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad08")
public class Brad08 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String result = "";
		
		if (x != null && y != null) {
			try {
				int intX = Integer.parseInt(x);
				int intY = Integer.parseInt(y);
				result = intX + intY + "";
				
			}catch(Exception e) {
				
			}
		}else {
			x = y = "";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.append("<h1>Brad Big Company</h1>")
			.append("<hr>")
			.append("<form action='Brad08'>")
			.append("<input type='number' name='x' value='" + x + "' />")
			.append("+")
			.append("<input type='number' name='y' value='" + y + "' />")
			.append("<input type='submit' value='='>")
			.append(result)
			.append("</form>");
		
		response.flushBuffer();
		
		
		
		
		
		
		
		
		
	}

}

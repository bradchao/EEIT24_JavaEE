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
		String op = request.getParameter("op");
		String result = "";
		
		if (x != null && y != null) {
			try {
				int intX = Integer.parseInt(x);
				int intY = Integer.parseInt(y);
				switch (op) {
					case "1": result = intX + intY + ""; break;
					case "2": result = intX - intY + ""; break;
					case "3": result = intX * intY + ""; break;
					case "4": 
						int r1 = intX / intY;
						int r2 = intX % intY;
						result = r1 + ((r2==0)?"":" ...... " + r2); 
						break;
				}
				
			}catch(Exception e) {
				
			}
		}else {
			x = y = op = "";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.append("<h1>Brad Big Company</h1>")
			.append("<hr>")
			.append("<form action='Brad08'>")
			.append("<input type='number' name='x' value='" + x + "' />")
			.append("<select name='op'>")
			.append("<option value='1' " + (op.equals("1")?"selected":"") + ">+</option>")
			.append("<option value='2' " + (op.equals("2")?"selected":"") + ">-</option>")
			.append("<option value='3' " + (op.equals("3")?"selected":"") + ">x</option>")
			.append("<option value='4' " + (op.equals("4")?"selected":"")+ ">/</option>")
			.append("</select>")
			.append("<input type='number' name='y' value='" + y + "' />")
			.append("<input type='submit' value='='>")
			.append(result)
			.append("</form>");
		
		response.flushBuffer();
		
		
		
		
		
		
		
		
		
	}

}

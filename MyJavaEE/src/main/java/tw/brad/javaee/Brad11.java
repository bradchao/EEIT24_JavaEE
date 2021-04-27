package tw.brad.javaee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// 1: prepare
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		if (x == null) x = "0";
		if (y == null) y = "0";
		if (op == null) op = "1";
		
		// 2. modle
		Brad12 model = new Brad12(x, y, op);
		double result = model.operation();
		
		// 3. viewer => view
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher(
				String.format("Brad13?x=%s&op=%s&y=%s&result=%s&vfile=%s",
						x,op,y,result, "view3.html")
					);
		dispatcher.forward(request, response);
		
	}

}

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
		if (x == null) x = "0";
		if (y == null) y = "0";
		
		// 2. modle
		Brad12 model = new Brad12(x, y);
		int result = model.add();
		
		// 3. viewer => view
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher(
				String.format("Brad13?x=%s&y=%s&result=%s", x,y,result)
					);
		dispatcher.forward(request, response);
		
	}

}

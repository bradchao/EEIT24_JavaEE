package tw.brad.javaee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad06")
public class Brad06 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		
		System.out.println(account +":" + password);
		System.out.println(gender.equals("m")?"男生":"女生");
		
		String[] h = {"打電腦","打電動","打籃球",
				"打麻將","打毛線","打小孩"};
		
		String[] hobbys = request.getParameterValues("hobby");
		if (hobbys != null) {
			for (String hobby : hobbys) {
				System.out.println(h[Integer.parseInt(hobby)]);
			}
		}
		
		
	}

}

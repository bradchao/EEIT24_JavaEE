package tw.brad.javaee;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad14")
@MultipartConfig(
		location = "C:\\Users\\USER\\git\\repository4\\MyJavaEE\\src\\main\\webapp\\upload"
		)
public class Brad14 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Collection<Part> parts = request.getParts();
		for(Part part: parts) {
			String type = part.getContentType();
			String name = part.getName();
			String sname = part.getSubmittedFileName();
			
			System.out.println(name +":" + type + ":" + sname);
			
			if (name.equals("upload")) {
				if (sname.length() == 0 ) continue;
				part.write(createFileName());
			}
		}
		
	}

	private String createFileName() {
		SimpleDateFormat sdf = 
				new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
			String filename = "Brad" + sdf.format(new Date()) + ".jpg";
		return filename;
	}
	
}

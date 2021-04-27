package tw.brad.javaee;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad16
 */
@WebServlet("/Brad16")
public class Brad16 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		BufferedImage bimg = 
			ImageIO.read(new File("C:\\Users\\USER\\git\\repository4\\MyJavaEE\\src\\main\\webapp\\upload\\coffee.jpg"));
		Graphics2D g2d = bimg.createGraphics();
		
		Font font = new Font(null, Font.BOLD + Font.ITALIC, 64);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-30) ,0, 0);
		Font font2 = font.deriveFont(tran);
		
		g2d.setFont(font2);
		g2d.setColor(Color.YELLOW);
		g2d.drawString("Hello, World", 80, 200);
		
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		out.flush();
		out.close();
		
		response.setContentType("text/html; charset=UTF-8");
		FileOutputStream fout = new FileOutputStream("C:\\Users\\USER\\git\\repository4\\MyJavaEE\\src\\main\\webapp\\upload\\coffee2.jpg");
		ImageIO.write(bimg, "jpeg", fout);
		fout.flush();
		fout.close();
		
		
	}

}

package tw.brad.tags;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyTag2 extends SimpleTagSupport {
	
	@Override
	public void doTag() throws JspException, IOException {
		super.doTag();
		
		JspContext context =  getJspContext();
		JspWriter out = context.getOut();
		
		JspFragment body = getJspBody();
		
		StringWriter sw = new StringWriter();
		body.invoke(sw);
		System.out.println(sw);
		
		out.println(sw.toString().toUpperCase());
		
	}

}

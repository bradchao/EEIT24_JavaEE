<%@tag import="java.util.HashMap"%>
<%@tag dynamic-attributes="product" %>
<%
	HashMap<String,String> ps =
	 	(HashMap<String,String>)jspContext.getAttribute("product");
	
	out.println("<tr>");
	
	out.println("<td>" + ps.get("pname") + "</td>");
	out.println("<td>" + ps.get("price") + "</td>");

	out.println("</tr>");

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String method = request.getMethod();
	out.println(method + "<br>");
	
	HttpServletRequest sr = 
		(HttpServletRequest)pageContext.getRequest();
	out.println(request == sr);
	
	String addr = request.getRemoteAddr();
	out.println(addr + "<br>");
	
	String lang = response.getLocale().getDisplayLanguage();
	out.println(lang + "<br>");
	
	HttpServletResponse hsr = (HttpServletResponse)pageContext.getResponse();
	out.println(response == hsr);
	

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Account: ${param.account }<br>
Password: ${param.passwd }<br>
${paramValues.hobby[0] }<br>
${paramValues.hobby[1] }<br>
${paramValues.hobby[2] }<br>
<hr />
${pageContext.request.method }<br>
${pageContext.request.remoteAddr }<br>
${pageContext.response.locale.displayLanguage }<br>



</body>
</html>
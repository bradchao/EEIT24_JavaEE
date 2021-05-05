<%@page import="tw.brad.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.isNew() || request.getParameter("account") == null ||
			request.getParameter("passwd") == null){
		session.invalidate();
		response.sendRedirect("brad62.jsp");
		return;
	}
		
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");

	if (account.equals("brad") && passwd.equals("123456")){
		Member member = new Member("Brad", "Brad Chao", 18);
		session.setAttribute("member", member);
		
		//session.setMaxInactiveInterval(10);
		
		member.addAge(); member.addAge();
		
		
		response.sendRedirect("brad64.jsp");
	}else{
		session.invalidate();
		response.sendRedirect("brad62.jsp");
	}
	
%>

</body>
</html>
<%@page import="tw.brad.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("member") == null){
		response.sendRedirect("brad62.jsp");
	}else{
		Member member = (Member)session.getAttribute("member");
		pageContext.setAttribute("member", member);
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Welcome, ${member.realname } :　${member.age }<br>
<a href="brad65.jsp">Page2</a>
<hr >
<a href="logout.jsp">Logout</a>
</body>
</html>
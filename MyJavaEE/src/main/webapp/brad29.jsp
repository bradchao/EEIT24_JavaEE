<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//	String name = request.getParameter("name");
//	if (name == null) name = "World";	
	
	int lottery = (int)(Math.random()*49+1);
	request.setAttribute("lottery", lottery);
	
	pageContext.setAttribute("key1", "value1");
	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<h1>Brad Big Company</h1>
<%= lottery %>
<%@ include file="brad30.jsp" %>

<hr />
<div>Copyright....</div>


</body>
</html>
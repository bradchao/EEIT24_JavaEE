<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	if (name == null) name = "nobody";
	String v1 = request.getParameter("mykey1");
	if (v1 == null) v1 = "novalue1";
	String v2 = request.getParameter("mykey2");
	if (v2 == null) v2 = "novalue2";

	int key1 = (int)(Math.random()*49+1);
	int key2 = (int)(Math.random()*49+1);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad</h1>
<%= name %><br> 
<%= v1 %><br>
<%= v2 %>
<hr>
<jsp:include page="brad32.jsp">
	<jsp:param value="<%= key1 %>" name="mykey1"/>
	<jsp:param value="<%= key2 %>" name="mykey2"/>
</jsp:include>
<hr>


</body>
</html>
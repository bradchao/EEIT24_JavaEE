<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad</h1>
<hr />
<c:catch var="error">
<%
	String num = request.getParameter("n");
	int n = Integer.parseInt(num);
	out.println(n);
%>
</c:catch>
<hr>
Hello, World<br>
${error }



</body>
</html>
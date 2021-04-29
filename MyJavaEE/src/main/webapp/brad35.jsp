<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

I am Brad35
<hr>
<jsp:forward page="brad36.jsp">
	<jsp:param value="123" name="v1"/>
	<jsp:param value="456" name="v2"/>
</jsp:forward>

</body>
</html>
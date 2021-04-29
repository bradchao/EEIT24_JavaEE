<%@page import="tw.brad.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)application.getAttribute("member");
	member.addAge();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Account: <%= member.getAccount() %><br>
Age: <%= member.getAge() %>
</body>
</html>
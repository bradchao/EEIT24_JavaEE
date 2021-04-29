<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Today: <% 
	Calendar now = Calendar.getInstance();
	int year = now.get(Calendar.YEAR);
	int month = now.get(Calendar.MONTH);
	int day = now.get(Calendar.DAY_OF_MONTH);
	out.print(String.format("%d-%d-%d", year, month, day));
%>
</body>
</html>
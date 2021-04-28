<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<% 
	int lottery = (int)(Math.random()*49+1);
	out.println("Hello, World: " + lottery);
%>
<br>
這期要出: <% out.println(lottery); %><br />
這期要出: <%= lottery %><br />


</body>
</html>
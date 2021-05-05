<%@page import="tw.brad.utils.Member"%>
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
	Member member1 = new Member("user1", "user1", 18);
	Member member2 = new Member("user2", "user2", 19);
	Member member3 = new Member("user3", "user3", 20);
	Member member4 = new Member("user4", "user4", 21);
	
	pageContext.setAttribute("member", member1);
	request.setAttribute("member", member2);
	session.setAttribute("member", member3);
	application.setAttribute("member", member4);
%>
${pageScope.member.account } : ${sessionScope.member.realname } : ${applicationScope.member.age } 



</body>
</html>
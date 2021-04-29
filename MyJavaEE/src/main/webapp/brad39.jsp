<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<jsp:setProperty property="account" value="${param.account }" name="member"/>
<jsp:setProperty property="realname" value="${param.realname }" name="member"/>
<jsp:setProperty property="age" value="${param.age }" name="member"/>
Account: ${member.account }<br>
Realname: ${member.realname }<br>
Age: ${member.age }<br>
<hr>
<jsp:declaration>
	int a;
	String b;
</jsp:declaration>
<jsp:scriptlet>
	a = 10;
	b = "Brad";
</jsp:scriptlet>

a = <jsp:expression>a</jsp:expression><br>
b = <jsp:expression>b</jsp:expression><br>
<hr>
Member = <jsp:expression>member</jsp:expression><br>
Member = <%= member %><br>
Member = ${member }


</body>
</html>
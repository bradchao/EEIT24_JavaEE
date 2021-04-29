<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<c:set var="x" value="456" scope="request"/>
x = ${requestScope.x }<br>
x = ${x }<br>

<c:out value="Hello, World" /><br>
<c:out value="${'Hello, World' }" /><br>
y = <c:out value="${x }" default="no value"/><br>

<c:set target="${member }" property="account">brad</c:set>
<c:set target="${member }" property="realname">Brad</c:set>
<c:set target="${member }" property="age">18</c:set>

${member.account }:${member.realname }:${member.age }<br>
${member }
<hr>
<c:remove var="member"/>
${member }





</body>
</html>
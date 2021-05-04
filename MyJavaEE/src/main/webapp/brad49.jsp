<%@page import="tw.brad.utils.BradAPIs"%>
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

<c:if test='${param.n == "10" }' var="result">
	Hello, World<br>
</c:if>
${result }
<hr>
<c:set var="score">${BradAPIs.myScore() }</c:set>
Score: ${score }<br>
<c:choose>
	<c:when test="${score >= 90 }">A</c:when>
	<c:when test="${score >= 80 }">B</c:when>
	<c:when test="${score >= 70 }">C</c:when>
	<c:when test="${score >= 60 }">D</c:when>
	<c:otherwise>E</c:otherwise>
</c:choose>



</body>
</html>
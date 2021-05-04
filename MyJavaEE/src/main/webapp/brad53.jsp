<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<sql:setDataSource 
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/iii"
	user="root"
	password="root"
	/>   
<sql:query var="rs1">
SELECT * FROM gift
</sql:query>

<c:set var="rpp" value="10" />



<c:set var="page" value="" />
<c:set var="start" value="" />
<c:set var="prev" value="" />
<c:set var="next" value="" />
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<table border="1" width="100%">
	<tr>
		<th>編號</th>
		<th>名稱</th>
		<th>規格</th>
		<th>圖片</th>
	</tr>
	<c:forEach items="${rs.rows }" var="row">
		<tr>
			<td>${row.id }</td>
			<td>${row.name }</td>
			<td>${row.org }</td>
			<td><img src="${row.url }" width="128px" /></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>
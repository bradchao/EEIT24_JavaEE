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
<c:if test="${!empty param.delid }">
	<sql:update>
		DELETE FROM cust WHERE id = ?
		<sql:param>${param.delid }</sql:param>
	</sql:update>
</c:if>
	
<sql:query var="result">
SELECT * FROM cust
</sql:query>	
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<a href="">Add New Data</a>
<hr />
<table border="1" width="100%">
	<tr>
		<th>ID</th>
		<th>Cname</th>
		<th>Tel</th>
		<th>Birthday</th>
		<th>Del</th>
		<th>Edit</th>
	</tr>
	<c:forEach items="${result.rows }" var="row">
		<tr>
			<td>${row.id }</td>
			<td>${row.cname }</td>
			<td>${row.tel }</td>
			<td>${row.birthday }</td>
			<td><a href="?delid=${row.id }">Del</a></td>
			<td>Edit</td>
		</tr>
	</c:forEach>
	
</table>

</body>
</html>
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
<c:if test="${!empty param.cname}" var="tt">
	<sql:update>
		UPDATE cust SET cname=?,tel=?,birthday=? WHERE id = ?
		<sql:param>${param.cname }</sql:param>
		<sql:param>${param.tel }</sql:param>
		<sql:param>${param.birthday }</sql:param>
		<sql:param>${param.id }</sql:param>
	</sql:update>
	<c:redirect url="brad54.jsp"></c:redirect>
</c:if>


<sql:query var="result">
	SELECT * FROM cust WHERE id = ?
	<sql:param>${param.editid }</sql:param>
</sql:query>
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Edit Page<hr>
<form action="brad56.jsp">
	<input type="hidden" name="id" value="${param.editid }">
	Name:<input name="cname" value="${result.rows[0].cname }" /><br>
	Tel:<input name="tel" value="${result.rows[0].tel }" /><br>
	Birthday:<input type="date" name="birthday" value="${result.rows[0].birthday }" /><br>
	<input type="submit" value="Update" />
</form>
</body>
</html>
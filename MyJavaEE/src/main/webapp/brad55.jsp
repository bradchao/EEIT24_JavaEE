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
<c:if test="${! empty param.cname }">	
	<sql:update var="count">
		INSERT INTO cust (cname,tel,birthday) VALUES (?,?,?)
		<sql:param>${param.cname }</sql:param>
		<sql:param>${param.tel }</sql:param>
		<sql:param>${param.birthday }</sql:param>
	</sql:update>
	<c:redirect url="brad54.jsp"></c:redirect>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Add
<hr>
<form action="brad55.jsp">
	Name:<input name="cname" /><br>
	Tel:<input name="tel" /><br>
	Birthday:<input type="date" name="birthday" /><br>
	<input type="submit" value="Add" />
</form>



</body>
</html>
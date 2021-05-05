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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<c:catch>
	<sql:transaction>
		<sql:update>
			INSERT INTO cust (cname,tel,birthday) VALUES (?,?,?)
			<sql:param>test8</sql:param>
			<sql:param>123</sql:param>
			<sql:param>1999-01-02</sql:param>
		</sql:update>
		
		<sql:query var="lastid">
			SELECT last_insert_id() as newid
		</sql:query>
		
		<sql:update>
			UPDATE cust SET tel = ? WHERE id = ?
			<sql:param>777</sql:param>
			<sql:param>${lastid.rows[0].newid }</sql:param>
		</sql:update>
	</sql:transaction>
	${lastid.rows[0].newid }
</c:catch>

</body>
</html>
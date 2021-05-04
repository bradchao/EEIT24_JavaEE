<%@page import="javax.servlet.jsp.jstl.sql.Result"%>
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

<%
	Result result = (Result)pageContext.getAttribute("rs1");
	int rowCount = result.getRowCount();
	int rpp = Integer.parseInt((String)pageContext.getAttribute("rpp"));
	int pages = rowCount % rpp == 0? rowCount/rpp : rowCount/rpp+1;
	pageContext.setAttribute("pages", pages);
%>

<c:set var="page" value="${param.page == null? 1 : param.page }" />
<c:set var="start" value="${(page - 1) * rpp }" />
<c:set var="prev" value="${page == 1? 1 : page -1 }" />
<c:set var="next" value="${page == pages ? page : page + 1}" />
	
<sql:query var="rs">
SELECT * FROM gift LIMIT ${start }, ${rpp }
</sql:query>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</head>
<body>

<a href="?page=${prev }"><button type="button" class="btn btn-primary">上一頁</button></a> | <a href="?page=${next }">下一頁</a>
<hr />
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
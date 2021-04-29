<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<form action="brad40.jsp">
	<input type="number" name="x" value="${param.x }" />
	<select>
		<option value="1">+</option>
		<option value="2">-</option>
		<option value="3">x</option>
		<option value="4">/</option>
	</select>
	<input type="number" name="y" value="${param.y }" />
	<input type="submit" value="=" />
	${param.x + param.y }
</form>
</body>
</html>
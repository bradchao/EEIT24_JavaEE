<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (!session.isNew()){
		if (session.getAttribute("member") != null){
			response.sendRedirect("brad64.jsp");
		}else{
			response.sendRedirect("logout.jsp");
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form action="brad63.jsp" method="post">
	Account: <input type="text" name="account" /><br>
	Password: <input type="text" name="passwd" /><br>
	<input type="submit" value="Login" />
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<brad:test1 />
<hr />
<brad:sayHello user="Brad" />
<brad:sayHello user="布萊德"></brad:sayHello>
<hr />
<brad:calc x="10" y="3">
10 + 3 = ${add }<br>
10 - 3 = ${sub }<br>
10 x 3 = ${multipy }<br>
10 / 3 = ${divide }<br>
</brad:calc>
<hr />

<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>Price</th>
	</tr>
	<brad:myjsp pname="Camera" price="100" />
	<brad:myjsp pname="iPhone" price="20000" />
	<brad:myjsp pname="Mouse" price="99" />
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String result = "";
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	if (op == null) op = "1";
	try{
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int intResult = 0;
		switch(op){
			case "1": intResult = intX + intY; break;
			case "2": intResult = intX - intY; break;
			case "3": intResult = intX * intY; break;
			case "4": intResult = intX / intY; break;
		}
		result = intResult + "";
	}catch(ArithmeticException e){
		result = "......";
	}catch(Exception e){
		//result = "?";	
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<script type="text/javascript">
	function checkForm(){
		let x = document.getElementById("x").value;
		return x % 2 == 0;
	}
</script>
<form onsubmit="return checkForm();">
	<input type="number" id="x" name="x" required value="<%= x %>" />
	<select name="op">
		<option value="1" <% out.print(op.equals("1")?"selected":""); %>>+</option>
		<option value="2" <% out.print(op.equals("2")?"selected":""); %>>-</option>
		<option value="3" <% out.print(op.equals("3")?"selected":""); %>>x</option>
		<option value="4" <% out.print(op.equals("4")?"selected":""); %>>/</option>
	</select>
	<input type="number" name="y" required value="<%= y %>" />
	<input type="submit" value="=" />
	<span><%= result %></span>
</form>

</body>
</html>
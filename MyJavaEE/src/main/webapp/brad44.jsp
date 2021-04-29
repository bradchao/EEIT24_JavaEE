<%@page import="tw.brad.utils.BradAPIs"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad", "Hello", "Keny", "Eric"};
	pageContext.setAttribute("username", var1);
	
	String[] var2 = {"aa", "bb", "cc", "dd"};
	request.setAttribute("username", var2);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("cccc");
	request.setAttribute("list", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("x","12.3"); map.put("y","13.4");
	request.setAttribute("map", map);
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
${username[0] }<br>
${requestScope.username[0] }<br>
<%= var2[1] %><br>
${list[1] }<br>
${list["0"] }<br>
${list[param.i] }<br>
${map.x }<br>
${map["y"] }<br>
${map[param.key] }<br>
Lottery: <%= BradAPIs.createLottery() %><br>
Lottery: ${BradAPIs.createLottery() }<br>
${Math.random() }<br>
${BradAPIs.sayYa(param.name) }<br>
${10 + 3 }<br>
${10 < 3 }<br>
${param.x} > ${param.y} => ${param.x > param.y }<br>
${(param.x == "10")?"Yes":"No" }<br>

</body>
</html>
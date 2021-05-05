<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:import var="data" url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx" />
<%
	String strData = (String)pageContext.getAttribute("data");
	//out.print(strData);
	JSONArray root = new JSONArray(strData);
	//out.println(root.length());
	
	LinkedList<HashMap<String,String>> data = new LinkedList<>(); 
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		String name = row.getString("Name");
		String tel = row.getString("Tel");
		String city = row.getString("City");
		String town = row.getString("Town");
		String pic = row.getString("PicURL");
		
		HashMap<String,String> map = new HashMap<>();
		map.put("name", name);
		map.put("tel", tel);
		map.put("city", city);
		map.put("town", town);
		map.put("pic", pic);
		data.add(map);
	}
	
	pageContext.setAttribute("pdata", data);
%>

<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>Tel</th>
		<th>City</th>
		<th>Town</th>
		<th>Picture</th>
	</tr>
	<c:forEach items="${pdata }" var="row">
		<tr>
			<td>${row.name }</td>
			<td>${row.tel }</td>
			<td>${row.city }</td>
			<td>${row.town }</td>
			<td><img src="${row.pic }" width="128px"/></td>
		</tr>
	</c:forEach>
	
</table>




</body>
</html>
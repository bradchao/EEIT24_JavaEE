<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	JSON 1: [{name:"Brad1",age:18, gender:true},{name:"Brad2", age:19},{name:"Brad3", age:20}]
 -->
 <%
 	JSONArray root = new JSONArray();
 
 	for (int i=0; i<3; i++){
	 	JSONObject obj = new JSONObject();
	 	obj.put("name", "Brad1");
	 	obj.put("age", 18);
	 	obj.put("gender", true);
	 	root.put(obj);
 	}
 	out.println(root.toString());
 	out.println("<hr>");
 %>
 <!-- 
	JSON 2: 
	{isSuccess:true,data:[{name:"Brad1",age:18, gender:true},{name:"Brad2", age:19}]}
	{isSuccess:false,error:"bad request"}
 -->
 <%
 	JSONObject root2 = new JSONObject();
 	root2.put("isSuccess", true);
 	JSONArray rows = new JSONArray();
 	for (int i=0; i<3; i++){
	 	JSONObject obj = new JSONObject();
	 	obj.put("name", "Brad1");
	 	obj.put("age", 18);
	 	obj.put("gender", true);
	 	rows.put(obj);
 	}
 	root2.put("data", rows);
 	out.println(root2.toString());
 %>
 
 
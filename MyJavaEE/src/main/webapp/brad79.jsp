<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONArray root = new JSONArray();

	for (int i=0; i<10; i++){
	 	JSONObject obj = new JSONObject();
	 	obj.put("name", "name" + (int)(Math.random()*49+1));
	 	obj.put("address", "addr" + (int)(Math.random()*49+1));
	 	root.put(obj);
	}
	out.println(root.toString());
%>
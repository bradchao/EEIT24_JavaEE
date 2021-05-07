<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int p =Integer.parseInt(request.getParameter("page"));

	JSONObject obj = new JSONObject();
	if (p <= 0) {
		obj.put("error", 1);
		obj.put("page", 1);
		out.print(obj.toString());
		return; 
	}
	if (p > 10) {
		obj.put("error", 1);
		obj.put("page", 10);
		out.print(obj.toString());
		return; 
	}
	
	obj.put("error", 0);
	obj.put("page", p);
	
	JSONArray root = new JSONArray();
	for (int i=0; i<10; i++){
	 	JSONObject row = new JSONObject();
	 	row.put("name", "name" + (int)(Math.random()*49+1));
	 	row.put("address", "addr" + (int)(Math.random()*49+1));
	 	root.put(row);
	}
	
	obj.put("data", root);
	out.println(obj.toString());
%>
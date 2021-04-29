<%
	String mesg = request.getParameter("mesg");
	if (mesg == null) mesg = "";
	
	Integer lottery2 = (Integer)request.getAttribute("lottery");
	if (lottery2 == null) lottery2 = 12;
	
	String key1 = (String)pageContext.getAttribute("key1");
	String name = "test";
%>
<div style="background-color: rgb(255,255,0)">
Hello, <%= name %><br>
<div>Key1 = <%= key1 %></div>
<div><%= lottery2 %></div>
<div><%= mesg %></div>
</div>
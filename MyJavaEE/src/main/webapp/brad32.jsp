<%
	String name = request.getParameter("name");
	if (name == null) name = "nobody";
	String v1 = request.getParameter("mykey1");
	if (v1 == null) v1 = "novalue1";
	String v2 = request.getParameter("mykey2");
	if (v2 == null) v2 = "novalue2";
%>
I am <%= name %> 
<hr>
<%= v1 %><br>
<%= v2 %>
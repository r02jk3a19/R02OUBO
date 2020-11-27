<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	List<String[]> list=(List<String[]>)request.getAttribute("result");
%>
<%
	List<String[]> list2=(List<String[]>)request.getAttribute("result2");
%>
応募数上位１０人

<table border=1>
<%
	for(int i=0;i<list.size();i++){
	
%>
	<tr>
		<TD><%=list.get(i)  %></TD>
		<TD><%=list2.get(i)  %></TD>
		<% }%>
	</tr>

</table>




</body>
</html>
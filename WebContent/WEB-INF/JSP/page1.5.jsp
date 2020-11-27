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
String sEname = (String)request.getAttribute("sEname");
%>

<%
String sNuma = (String)request.getAttribute("numa");
%>
<%
String sNumb = (String)request.getAttribute("numb");
%>
<h1>この番号でよろしいですか？</h1>

<p>番号A: <%=sNuma %> </p>
<p>番号B: <%=sNumb %> </p>




<form method="post" action="./page2">
<input type="hidden" name="email" value="<%=sEname %>">
<input type="hidden" name="numa" value="<%=sNuma %>">
<input type="hidden" name="numb" value="<%=sNumb %>">


<input type="submit" value="登録する" />
<input type="button" value="戻る" onClick="history.back()">
</form>


</body>
</html>
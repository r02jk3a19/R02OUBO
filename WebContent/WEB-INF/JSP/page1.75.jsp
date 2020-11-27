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
String sNuma1 = (String)request.getAttribute("numa1");
%>
<%
String sNumb1 = (String)request.getAttribute("numb1");
%>

<%
String sNuma2 = (String)request.getAttribute("numa2");
%>
<%
String sNumb2 = (String)request.getAttribute("numb2");
%>

<%
String sNuma3 = (String)request.getAttribute("numa3");
%>
<%
String sNumb3 = (String)request.getAttribute("numb3");
%>

<%
String sNuma4 = (String)request.getAttribute("numa4");
%>
<%
String sNumb4 = (String)request.getAttribute("numb4");
%>

<%
String sNuma5 = (String)request.getAttribute("numa5");
%>
<%
String sNumb5 = (String)request.getAttribute("numb5");
%>




<h1>この番号でよろしいですか？</h1>

<p>番号A1: <%=sNuma1 %> </p>
<p>番号B2: <%=sNumb1 %> </p>
<p>番号A2: <%=sNuma2 %> </p>
<p>番号B2: <%=sNumb2 %> </p>
<p>番号A3: <%=sNuma3 %> </p>
<p>番号B3: <%=sNumb3 %> </p>
<p>番号A4: <%=sNuma4 %> </p>
<p>番号B4: <%=sNumb4 %> </p>
<p>番号A5: <%=sNuma5 %> </p>
<p>番号B5: <%=sNumb5 %> </p>



<form method="post" action="./page2-2">
<input type="hidden" name="email" value="<%=sEname %>">
<input type="hidden" name="numa1" value="<%=sNuma1 %>">
<input type="hidden" name="numb1" value="<%=sNumb1 %>">
<input type="hidden" name="numa2" value="<%=sNuma2 %>">
<input type="hidden" name="numb2" value="<%=sNumb2 %>">
<input type="hidden" name="numa3" value="<%=sNuma3 %>">
<input type="hidden" name="numb3" value="<%=sNumb3 %>">
<input type="hidden" name="numa4" value="<%=sNuma4 %>">
<input type="hidden" name="numb4" value="<%=sNumb4 %>">
<input type="hidden" name="numa5" value="<%=sNuma5 %>">
<input type="hidden" name="numb5" value="<%=sNumb5 %>">


<input type="submit" value="登録する" />
<input type="button" value="戻る" onClick="history.back()">
</form>


</body>
</html>
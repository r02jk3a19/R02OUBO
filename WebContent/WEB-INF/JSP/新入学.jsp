<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"href="${pageContext.request.contextPath}/CSS/画面新入学.css">
<title>新入学</title>
</head>
<body>
<form action="./page2" method="post">
	<div class="img"></div>
		<font size="8" color="white">
			<div class = "box" style="position:absolute; top:450px; left:790px">
    			<table>
  					<tr>
    					<td><b> メール：</b></td>
    					<td><input type="text" name="name" size="30" maxlength="20"></td>
    				</tr>
    				<tr>		
    					<td><b> 番号A：</b></td>
    					<td><input type="text" name="name" size="30" maxlength="20"></td>
    				</tr>
    				<tr>	
    					<td><b> 名前B：</b></td>
    					<td><input type="text" name="name" size="30" maxlength="20"></td>
  					</tr>		
  				</table>
  			</div>	
  		</font>
  	</form>
</body>
</html>
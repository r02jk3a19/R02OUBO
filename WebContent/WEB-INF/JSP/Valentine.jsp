<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background-repeat:no-repeat;
	background-size:100%;

}


</style>
</head>

<body style="background-image:url(file:///Z:/git/R02OUBO/WebContent/WEB-INF/image/iStock-998094634.jpg)">

<h1><font color="#f08080"face="'Gabriola',sans-serif">Valentine's Day Sale</font></h1>

<form method="post" action="./page2">
<font color="#f08080"face="'Gabriola',sans-serif" size="3">応募者のメールアドレス</font>
<input type="email" name="email" placeholder="メールアドレスを入力"  /><br/>
<font color="#f08080"face="'Gabriola',sans-serif"size="4">７桁の数字Ａ</font>
<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
<font color="#f08080"face="'Gabriola',sans-serif"size="4">７桁の数字Ｂ</font>
<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<input type="submit"class="click-down"value="登録する"style="color:#8b0000;background-color:#ffffff;border-color:#d2b48c;"/>
</form>


</body>
</html>
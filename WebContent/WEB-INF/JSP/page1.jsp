<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"href="${pageContext.request.contextPath}/CSS/gamenn4.css">
<title>Insert title here</title>
</head>
<body>


<h1>仙台駅前第一デパート　セール抽選会　受付会場</h1>






<form method="post" action="./page1-2">
応募者のメールアドレス<input type="email" name="email" placeholder="メールアドレスを入力" /><br/>
7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<input type="submit" value="登録する" />
</form>
<form method="get" action="./page1-5en">
<input type="submit" value="5つ登録画面に移動" />
</form>

<form method="get" action="./pageK1">
<input type="submit" value="管理画面に移動" />
</form>

</body>
</html>

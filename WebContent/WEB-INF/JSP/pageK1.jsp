<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>管理画面</h1>
<h1>仙台駅前第一デパート　セール抽選会　受付会場</h1>






<form method="post" action="./pageK2">
当選商品名<input type="email" name="syouhin" placeholder="商品名" /><br/>
7桁の当選番号A<input type="number" name="numa" placeholder="7桁の数字A" /><br/>
7桁の当選番号B<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<input type="submit" value="登録する" />
</form>

</br>
<form method="get" action="./pageK3">
<input type="submit" value="期限変更画面へ" />
</form>
</br>

<form method="get" action="./pageK4">
<input type="submit" value="応募件数が多いアドレスを確認する" />
</form>

</body>
</html>
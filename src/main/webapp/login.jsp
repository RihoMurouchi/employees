<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" href="assets/stylesheets/app.css">
</head>
<body>
	<div class="main">
		<main>
			<div class="main__imageBox">
				<img class="main__image" src="assets/images/seassist_logo.png" alt="ロゴ">
			</div>
			<h2>従業員管理システム</h2>
			<br>
			<form action="login" method="post">
				<input type="text" name="id" placeholder="userId"><br> <input type="password" name="password"
					placeholder="password"><br> <br> <input type="submit" value="ログイン">
			</form>
		</main>
	</div>
</body>
</html>

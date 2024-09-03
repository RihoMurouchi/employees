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
				<!-- ヘッダー表示 -->
				<jsp:include page="header.jsp" />
			</div>
			<h2>従業員管理システム</h2>
			<br>
			<!-- エラーメッセージを表示 -->
			<div class="error-message">
				<jsp:include page="err.jsp" />
			</div>
			<!-- ログインフォームを表示 -->
			<form action="login" method="post">
				<input type="text" name="id" placeholder="userId"><br> <input type="password" name="password"
					placeholder="password"><br> <br> <input type="submit" value="ログイン">
			</form>
		</main>
	</div>
</body>
</html>

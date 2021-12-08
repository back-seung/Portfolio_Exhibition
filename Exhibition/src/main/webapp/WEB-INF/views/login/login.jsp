<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.loginform {
	margin-top: 200px;
}
</style>
<title>Document</title>
</head>
<body>
	<form action="loginProcess" method="post">
		<div class="jumbotron text-center">
			<h1>Exhibition Recommend</h1>
			<p>현재 전국에서 유명한 전시회를 소개합니다.</p>
			<hr>
			<h2>LOGIN</h2>
			<div>
				<p>
					ID : <input type="text" name="id" id="">
				</p>
				<p>
					PW : <input type="password" name="pw" id="">
				</p>
				<p>
					<input type="submit" class="btn btn-default" value="LOGIN" />
				</p>
			</div>
			<p>OR</p>
			<a class="btn btn-default" href="userSearchIdPwForm">ID / PW 찾기</a> <a
				class="btn btn-default" href="userRegisterForm">회원가입</a>
		</div>
	</form>
</body>
</html>
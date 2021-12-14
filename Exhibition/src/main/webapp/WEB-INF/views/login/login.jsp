<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #BDBDBD;
	color: #F5F5F5;
}

.login-form {
	background-color: #9E9E9E;
	border-radius: 15%;
}

</style>
<title>Document</title>
</head>
<body>
	<form action="loginProcess" method="post">
		<div class="text-center">
			<h1 class="display-1 fw-bolder">Exhibition Recommend</h1>
			<hr>
			<div class="login-form col-md-4 offset-md-4 shadow-lg">
				<div class="mt-4 p-4">
					<h2 class="display-3 fw-bolder">LOGIN</h2>
					<hr>
					<div class="col-sm-12">
						<label>ID</label> <input type="text" class="form-control"
							name="id" value="">
					</div>
					<div class="col-sm-12">
						<label class="form-label">PW</label> <input type="text"
							class="form-control" name="pw" value="">
					</div>
					<p>
						<input type="submit" class="btn btn-secondary mt-3" value="LOGIN" />
					</p>
					<div class="mb-3">
						<h5 class="mt-4 mb-4">OR</h5>
						<a class="btn btn-secondary" href="userSearchIdPwForm">ID / PW
							찾기</a> <a class="btn btn-secondary" href="userRegisterForm">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
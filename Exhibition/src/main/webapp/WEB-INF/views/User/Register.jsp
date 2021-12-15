<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Document</title>
<style>
body {
	background-color: #BDBDBD;
	color: #F5F5F5;
}

.inputForm {
	background-color: #9E9E9E;
	margin-top: 10%;
	border-radius: 3%;
	opacity: 75%;
	border-radius: 10%;
	margin-top: 10%;
}
</style>
</head>
<body>
	<div class="text-center">
		<h1 class="display-1 fw-bolder">Register</h1>/h1>
		<hr>
		<form action="userRegister" method="post">
			<div class="col-md-4 offset-md-4 shadow-lg inputForm">
				<div class="mt-4 p-4">
					<h2 class="display-3 fw-bolder">ID/PW 찾기</h2>
					<hr>
					<div class="col-sm-12">
						<label>Name</label> <input type="text" class="form-control"
							name="name" value="">
					</div>
					<div class="col-sm-12">
						<label class="form-label">PW</label> <input type="email"
							class="form-control" name="email">
					</div>
					<p>
						<input type="button" class="btn btn-secondary mt-3"
							onclick="findIdPw()" value="SEARCH">
					</p>
				</div>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
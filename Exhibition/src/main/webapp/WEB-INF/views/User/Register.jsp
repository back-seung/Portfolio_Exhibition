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
<title>Document</title>
</head>
<body>
	<div class="thumbnail text-center">
		<div class="jumbotron">
			<h2>Register</h2>
		</div>
		<form action="userRegister" method="post">
			<p>ID :</p>
			<input type="text" name="id" id="">
			<p>NAME :</p>
			<input type="text" name="name" id="">
			<p>PW :</p>
			<input type="text" name="pw" id="">
			<p>PW Check:</p>
			<input type="text" id="">
			<p class="notEqual" style="color: red"></p>
			<input class="btn btn-default" type="submit" value="회원가입">
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
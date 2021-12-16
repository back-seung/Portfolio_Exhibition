<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
<title>Document</title>
</head>
<body>
	<div class="text-center">
		<div class="inputForm col-md-4 offset-md-4 shadow-lg">
			<div class="mt-4 p-4">
				<div>
					<h5>YOUR ID :</h5>
					<div>${user.id}</div>
					<h5>YOUR PW :</h5>
					<div>${user.pw}</div>
					<a class="btn btn-secondary mt-3 mb-3" href="login">LOGIN 이동</a> <a
						class="btn btn-secondary mt-3 mb-3"
						href="${pageContext.request.contextPath}/">처음으로</a>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

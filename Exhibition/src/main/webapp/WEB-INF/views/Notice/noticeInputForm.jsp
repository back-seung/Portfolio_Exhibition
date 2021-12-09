<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
					Recommend</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>${sessionScope.userName}님 </a></li>
					<li><input type="hidden" name="id"
						value="${sessionScope.userName}" /></li>
					<li><a href="#">VIEW LIST</a></li>
					<li><a href="userMyPageForm?id=${sessionScope.userId}">MY
							PAGE</a></li>
					<li></li>
					<li><a href="logout">LOG OUT</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<form class="" action="">
		<div class="col-md-offset-5 col-md-2 text-center">
			<div class="thumbnail">
				<h2>공지글 입력 !</h2>
			</div>
			<input type="text" class="form-control" name="notice"
				placeholder="공지글 입력" /><input type="submit" class="btn btn-default"
				value="등록" /> <input type="button" class="btn btn-default"
				value="뒤로가기" />
		</div>
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
.home {
	margin-top: 20%;
	margin-bottom: 5%;
}
</style>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
					Recommend</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/html/selectAll.html">VIEW LIST</a></li>
					<!-- MOD USER-->
					<li><a href="userMyPageForm">MY PAGE</a></li>
					<li><a href="logout">LOG OUT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="col-sm-12 col-md-12 item">
		<div class="thumbnail">
			<h4>
				User Info
				<hr />
			</h4>
			<div class="caption">ID : ${user.id}</div>
			<div class="caption">NAME : ${user.name}님</div>
			<hr />
			<div>
				<a class="btn btn-default" href="userModForm?id=${user.id}">정보수정하기</a>
				<a class="btn btn-default" href="userDelete?id=${user.id}">탈퇴하기</a>
			</div>
		</div>
	</div>

	<div class="text-center">
		<a class="btn btn-default home"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
</body>
</html>

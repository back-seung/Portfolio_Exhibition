<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.home {
	margin-top: 20%;
	margin-bottom: 5%;
}
</style>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
				Recommend</a>
				<!-- nav 좌측 -->
			<div class="collapse navbar-collapse">
				<div class="navbar-nav">
					<a href="viewList" class="nav-item nav-link">VIEW LIST</a>
					<a class="nav-item nav-link notice" href="noticeList"> NOTICE</a>
				</div>
				<!-- nav 우측 -->
				<div class="navbar-nav ms-auto">
					<a class="nav-item nav-link">${sessionScope.userName}님 </a>
					<a href="userMyPageForm?id=${sessionScope.userId}" class="nav-link">MY PAGE</a>
					<a href="logout" class="nav-item nav-link">LOG OUT</a>
				</div>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

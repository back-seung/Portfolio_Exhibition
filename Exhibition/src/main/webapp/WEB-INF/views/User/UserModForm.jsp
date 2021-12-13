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
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>${sessionScope.userName}님 </a></li>
					<li><input type="hidden" name="id"
						value="${sessionScope.userName}" /></li>
					<li><a href=viewList>VIEW LIST</a></li>
					<li><a href="userMyPageForm?id=${sessionScope.userId}">MY
							PAGE</a></li>
					<li></li>
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
			<div class="caption">
				<p>ID : ${user.id}</p>
				<p>NAME : ${user.name}</p>
			</div>
			<form action="userMod" method="post">
				<div class="caption">
					<input type="hidden" name="id" value="${user.id}" /> 변경 NAME : <input
						type="text" name="name" placeholder="NAME 입력" />
				</div>
				<hr />
				<div>
					<input class="btn btn-default" type="submit" value="수정완료" />
				</div>
			</form>
		</div>
	</div>
	<div class="text-center">
		<a class="btn btn-default home"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
</body>
</html>

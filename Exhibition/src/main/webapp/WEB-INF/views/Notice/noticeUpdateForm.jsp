<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
	<form class="" action="noticeMod" method="post">
		<div class="col-md-offset-5 col-md-2 text-center">
			<div class="thumbnail">
				<h2>공지 수정</h2>
				<input type="hidden" name="n_no" value="${ntc.n_no}" />
				<div class="caption">현재 값 : ${ntc.notice}</div>
			</div>
			<input type="text" class="form-control" name="notice"
				placeholder="수정 내용" /><input type="submit" class="btn btn-default"
				value="수정" /> <input type="submit" class="btn btn-default"
				value="뒤로가기" />
		</div>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

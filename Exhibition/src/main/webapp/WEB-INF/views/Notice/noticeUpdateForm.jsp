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
<title>Document</title>
<style>
body {
	background-color: #BDBDBD;
	color: #F5F5F5;
}

.inputForm {
	color: black;
	background-color: #9E9E9E;
	margin-top: 10%;
	border-radius: 3%;
	opacity: 75%;
	border-radius: 10%;
	margin-top: 10%;
	background-color: #9E9E9E;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
				Recommend</a>
			<!-- nav 좌측 -->
			<div class="collapse navbar-collapse">
				<div class="navbar-nav">
					<a href="viewList" class="nav-item nav-link">VIEW LIST</a> <a
						class="nav-item nav-link notice" href="noticeList"> NOTICE</a>
				</div>
				<!-- nav 우측 -->
				<div class="navbar-nav ms-auto">
					<a class="nav-item nav-link">${sessionScope.userName}님 </a> <a
						href="userMyPageForm?id=${sessionScope.userId}" class="nav-link">MY
						PAGE</a> <a href="logout" class="nav-item nav-link">LOG OUT</a>
				</div>
			</div>
		</div>
	</nav>
	<div class="inputForm col-md-4 offset-md-4 shadow-lg">
		<form class="" action="noticeMod" method="post">
			<div class="mt-4 p-4">
				<div class="text-center">
					<h2 class="display-3 fw-bolder">공지 수정</h2>
					<hr>
				</div>
				<div>현재 값 : ${ntc.notice}</div>
				<hr>
				<div class="text-center">
					<div class="form-floating mb-3 nameForm">
						<input type="hidden" name="n_no" value="${ntc.n_no}" /> <input
							type="text" class="form-control" id="floatingInput" name="notice"
							placeholder="변경하고자 하는 이름을 입력해주세요"> <label
							for="floatingInput">수정할 내용</label>
					</div>
					<input type="submit" class="btn btn-secondary" value="수정" /> <a
						href="noticeList" class="btn btn-secondary">뒤로가기</a>
				</div>
			</div>
		</form>
	</div>
	<div class="text-center">
		<a class="btn btn-secondary mt-3"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

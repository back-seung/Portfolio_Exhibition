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
	margin-top: 5%;
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
	<form action="rcmdInsert" method="post" encType="multipart/form-data">
		<div class="text-center">
			<h1 class="display-1 fw-bolder">Insert Exhibition</h1>
			<hr>
			<div class="col-md-4 offset-md-4 shadow-lg inputForm">
				<div class="mt-4 p-4">
					<div class="col-sm-12">
						<label>도시 </label> <input type="text" class="form-control"
							name="city" value="">
					</div>
					<div class="col-sm-12">
						<label class="form-label">제목</label> <input type="text"
							class="form-control" name="title">
					</div>
					<div class="col-sm-12">
						<label class="form-label">설명</label> <input type="text"
							class="form-control" name="email">
					</div>
					<div class="col-sm-12">
						<label class="form-label">시작 날짜</label> <input type="date"
							class="form-control" name="begin_d">
					</div>
					<div class="col-sm-12">
						<label class="form-label">종료 날짜</label> <input type="date"
							class="form-control" name="end_d">
					</div>
					<div class="col-sm-12">
						<label class="form-label" for="rcmdImg">파일</label> <input
							id="rcmdImg" type="file" class="form-control" name="file">
					</div>
					<hr>
					<div class="selectImg">
						<img src="" />
					</div>
					<div>
						<%=request.getRealPath("/")%>
					</div>
					<hr>
					<input type="submit" class="btn btn-secondary mt-3" value="등록">
				</div>
			</div>
		</div>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$("#rcmdImg").change(
				function() {
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".selectImg img").attr("src", data.target.result)
									.width(500);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
	</script>
</body>
</html>
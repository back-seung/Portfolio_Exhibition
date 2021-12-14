<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	<form action="rcmdInsert" method="post" encType="multipart/form-data">
		<div class="jumbotron text-center">
			<h1>Insert Exhibition</h1>
			<hr>
		</div>
		<div class="text-center insertForm">
			<div class="thumbnail col-md-offset-4 col-md-4">
				<h4>도시명</h4>
				<p>
					<input type="text" name="city" id="">
				</p>
				<h4>제목</h4>
				<p>
					<input type="text" name="title" id="">
				</p>
				<h4>설명</h4>
				<p>
					<input type="text" name="info" id="">
				</p>
				<h4>시작날짜</h4>
				<p>
					<input type="date" name="begin_d" id="">
				</p>
				<h4>종료날짜</h4>
				<p>
					<input type="date" name="end_d" id="">
				</p>
				<div>
					<h4>파일</h4>
					<p>
						<label for="rcmdImg"></label> <input id="rcmdImg"
							class="btn btn-default" type="file" name="file">
					<div class="selectImg">
						<img src="" />
					</div>
					</p>
					<script>
						$("#rcmdImg").change(
								function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
											$(".selectImg img").attr("src",
													data.target.result).width(
													500);
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
					</script>
					<%=request.getRealPath("/")%>
				</div>
				<hr>
				<input type="submit" class="btn btn-default" value="등록" />
			</div>
		</div>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />

	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
</style>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition Recommend</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>${sessionScope.userName}님 </a></li>
					<li><input type="hidden" name="id" value="${sessionScope.userName}" /></li>
					<li><a href="#">VIEW LIST</a></li>
					<li><a href="userMyPageForm?id=${sessionScope.userId}">MY PAGE</a></li>
					<li><a href="logout">LOG OUT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<form action="loginProcess" method="post" encType="multipart/form-data">
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
					<input type="text" name="begin_d" id="">
				</p>
				<h4>종료날짜</h4>
				<p>
					<input type="text" name="end_d" id="">
				</p>
				<div>
					<h4>파일</h4>
					<p>
						<label for="rcmdImg"></label>
						<input id="rcmdImg" class="btn btn-default" type="file" name="filename">
						<div class="selectImg"><img src=""/></div>
					</p>
					<script>
					  $("#rcmdImg").change(function(){
						   if(this.files && this.files[0]) {
						    var reader = new FileReader;
						    reader.onload = function(data) {
						     $(".selectImg img").attr("src", data.target.result).width(500);        
						    }
						    reader.readAsDataURL(this.files[0]);
						   }
						  });
					</script>
					<%=request.getRealPath("/") %>
				</div>
				<hr>
				<input type="submit" class="btn btn-default" value="등록" />
			</div>
		</div>
	</form>
</body>
</html>
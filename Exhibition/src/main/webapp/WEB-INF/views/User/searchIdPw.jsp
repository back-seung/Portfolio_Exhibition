<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Document</title>
</head>
<body>
	<form action="userSearch" method="get">
		<div class="jumbotron text-center">
			<h2>ID / PW 찾기</h2>
			<div class="caption">이름을 입력해주세요</div>
			<br> <input type="text" name="name" id=""><span><input
				type="submit" value="SEARCH"></span>
	</form>
	<p>
	<div class="thumbnail">
		<div class="caption">검색결과 입니다.</div>
		<h3>
			회원님의 ID : <strong>${user.id}</strong>
		</h3>
		<hr>
		<h3>
			회원님의 PW : <strong>${user.pw}</strong>
		</h3>
	</div>
	</p>
	</div>
	<div class="text-center">
		<a class="btn btn-default home"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
</body>
</html>

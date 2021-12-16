<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
body {
	background-color: #BDBDBD;
}

.home {
	margin-top: 20%;
	margin-bottom: 5%;
}

.description {
	opacity: 65%;
	color: #BDBDBD;
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
	<form action="ReplyInsert" method="post">
		<div class="card text-white col-md-4 offset-md-4 Info">
			<img class="img" src="<c:url value="/img/${rcmd.thumbFileName}"/>" />
			<div class="card-img-overlay">
				<div class="description">
					<h1 class="card-title bg-warning display-1 fw-bolder">${rcmd.city}:</h1>
					<h3 class="display-4 bg-warning">${rcmd.title}</h3>
					<h2 class="card-text bg-warning fw-bolder">${rcmd.info}</h2>
					<div class=" bg-warning">${rcmd.begin_d}~${rcmd.end_d}</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a class="btn btn-secondary" href="rcmdModForm?rc_no=${rcmd.rc_no}">수정</a>
			<a class="btn btn-secondary" href="rcmdDel?rc_no=${rcmd.rc_no}">삭제</a>
		</div>


		<div class="col-md-8 offset-md-2 text-center mt-3">
			<table class="table table-hover">
				<tr>
					<th class="col-md-8">댓글</th>
					<th class="col-md-1">글쓴이</th>
				</tr>
				<c:forEach items="${cmt}" var="cmt">
					<tr>
						<td class="col-md-8">${cmt.cmt}</td>
						<td class="col-md-1">${cmt.author}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="3">
						<div class="input-group mb-3">
							<input type="hidden" name="author"
								value="${sessionScope.userName}" /> <input type="hidden"
								name="rc_no" value="${rcmd.rc_no}" /> <input type="text"
								class="form-control" name="cmt" placeholder="댓글 작성. . . " /> <input
								type="submit" class="btn btn-secondary" value="댓글등록">
						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<div class="text-center">
		<a class="btn btn-secondary"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

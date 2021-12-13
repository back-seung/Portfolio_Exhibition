<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.item {
	width: 50%;
	height: 50%;
}
</style>
<title>Document</title>
</head>
<body>
	<form action="ReplyInsert" method="post">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
						Recommend</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a>${sessionScope.userName}님 </a></li>
						<li><input type="hidden" name="author"
							value="${sessionScope.userName}" /></li>
						<li><a href="viewList">VIEW LIST</a></li>
						<li><a href="userMyPageForm?id=${sessionScope.userId}">MY
								PAGE</a></li>
						<li></li>
						<li><a href="logout">LOG OUT</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="col-sm-2 col-md-2 col-md-offset-3 item text-center">
			<div class="thumbnail">
				<input type="hidden" name="rc_no" value="${rcmd.rc_no}" /> <img
					class="img" src="<c:url value="/img/${rcmd.thumbFileName}"/>" />
				<h2>
					${rcmd.city }
					<hr />
					<small><a href="#">${rcmd.title}</a></small>
				</h2>
				<div class="caption">${rcmd.info}</div>
				<hr />
				<div class="caption">${rcmd.begin_d}~${rcmd.end_d}</div>
				<hr />
				<div class="caption">
					<a href="rcmdModForm?rc_no=${rcmd.rc_no}">수정</a>/ <a
						href="rcmdDel?rc_no=${rcmd.rc_no}">삭제</a>
				</div>
			</div>
		</div>
		<div class="col-md-12 text-center">
			<table class="table table-striped">
				<tr class="table">
					<td class="col-md-8">댓글</td>
					<td class="col-md-1">글쓴이</td>
					<td class="col-md-1">수정 / 삭제</td>
				</tr>
				<c:forEach items="${cmt}" var="cmt">
					<tr>
						<td class="col-md-8">${cmt.cmt}</td>
						<td class="col-md-1">${cmt.author}</td>
						<td class="col-md-1"><a href="">수정</a>/<a href="">삭제</a></td>
					</tr>
				</c:forEach>
			</table>
			<input type="text" class="col-md-11" name="cmt"> <span><input
				type="submit" class="btn btn-default col-md-1" value="댓글등록" /></span> <a
				class="btn btn-default" href="${pageContext.request.contextPath}/">처음으로</a>
		</div>
	</form>

</body>
</html>

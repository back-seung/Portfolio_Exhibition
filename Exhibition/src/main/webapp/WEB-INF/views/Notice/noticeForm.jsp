<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
	<hr>
	<table class="table table-hover text-center">
		<tr class="table">
			<td>#NO</td>
			<td>제목</td>
			<td>수정 / 삭제</td>
		</tr>
		<c:forEach var="ntcList" items="${ntcList}" varStatus="status">
			<tr>
				<input type="hidden" name="n_no" value="${ntcList.n_no}"/>
				<td>${status.count}</td>
				<td>${ntcList.notice}</td>
				<td><a href="noticeModForm?n_no=${ntcList.n_no}">수정</a> / <a href="noticeDel?n_no=${ntcList.n_no}">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="text-center">
		<a class="btn btn-default" href="noticeInputForm">공지작성</a> <a
			class="btn btn-default" href="${pageContext.request.contextPath}/">처음으로</a>
		<nav>
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<!-- C:forEach-->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
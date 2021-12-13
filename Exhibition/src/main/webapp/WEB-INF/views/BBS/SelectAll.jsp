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
</style>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">Exhibition
					Recommend</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>${sessionScope.userName}님 </a></li>
					<li><input type="hidden" name="id"
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
	<div class="input-group col-md-offset-10 col-md-2">
		<input type="text" class="form-control" name="reply"
			aria-describedby="sizing-addon1"> <span
			class="input-group-addon btn btn-default" id="sizing-addon1"><a
			href="">SEARCH!</a></span>
	</div>
	<hr>
	<table class="table table-striped">
		<tr class="table">
			<th>#NO</th>
			<th>도시</th>
			<th>제목</th>
			<th>기간</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="rcmd" items="${rcmdList}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${rcmd.city}</td>
				<td><a href="viewDetail?rc_no=${rcmd.rc_no}">${rcmd.title}</a></td>
				<td>${rcmd.begin_d}~${rcmd.end_d}</td>
				<td>${rcmd.cnt}</td>
			</tr>
		</c:forEach>
	</table>
	<div class="text-center">
		<nav>
			<ul class="pagination">

				<li><c:if test="${pagingVO.prev}">
						<a href="viewList?page=${pagingVO.startPage-1} "
							aria-label="Previous" class="prevpage  pbtn"> Previous </a>
					</c:if></li>
				<li><c:forEach begin="${pagingVO.startPage}"
						end="${pagingVO.endPage}" var="idx">
						<a href="viewList?page=${idx}">${idx}</a>
					</c:forEach></li> 	
				<li><c:if test="${pagingVO.next}">
						<a href="viewList?page=${pagingVO.endPage+1}" aria-label="Next"
							class="nextpage  pbtn">Next</a>
					</c:if></li>
			</ul>
		</nav>
		<a class="btn btn-default" href="rcmdInsertForm">글 작성</a> <a
			class="btn btn-default" href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
</body>
</html>

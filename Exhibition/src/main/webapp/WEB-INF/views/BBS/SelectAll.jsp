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
<title>Document</title>
<style>
.myTable {
	margin-top: 2%;
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
	<div class="myTable">
		<form name="search-Form" autocomplete="off">
			<div class="input-group mb-3">
				<select name="type">
					<option selected value="">검색 내용 선택</option>
					<option value="city">도시</option>
					<option value="title">제목</option>
				</select> <input type="text" class="form-control" name="keyWord"
					placeholder="검색할 내용 입력"> <input type="button"
					onclick="getSearchList()" class="btn btn-outline-secondary"
					value="SEARCH">
			</div>
		</form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#NO</th>
					<th>도시</th>
					<th>제목</th>
					<th>기간</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rcmd" items="${rcmdList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${rcmd.city}</td>
						<td><a href="viewDetail?rc_no=${rcmd.rc_no}">${rcmd.title}</a></td>
						<td>${rcmd.begin_d}~${rcmd.end_d}</td>
						<td>${rcmd.cnt}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<nav>
		<ul class="pagination justify-content-center">
			<li class="page-item"><c:if test="${pagingVO.prev}">
					<a href="viewList?page=${pagingVO.startPage-1}"
						aria-label="Previous" class="page-link"> Previous </a>
				</c:if></li>
			<li class="page-item"><c:forEach begin="${pagingVO.startPage}"
					end="${pagingVO.endPage}" var="idx">
					<a href="viewList?page=${idx}" class="page-link">${idx}</a>
				</c:forEach></li>
			<li class="page-item"><c:if test="${pagingVO.next}">
					<a href="viewList?page=${pagingVO.endPage+1}" aria-label="Next"
						class="page-link">Next</a>
				</c:if></li>
		</ul>
	</nav>
	<div class="text-center">
		<a class="btn btn-secondary" href="rcmdInsertForm">글 작성</a> <a
			class="btn btn-secondary" href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function getSearchList() {
			$.ajax({
				type : 'GET',
				url : "viewList/getSearchList",
				data : $("form[name=search-Form]").serialize(),
				success : function(result) {
					if (result.length >= 1) {
						$('.myTable > tbody').empty();
						result.forEach(function(item) {
							str = '<tr>'
							str += "<td>" + item.city + "</td>";
							str += "<td>" + item.title + "</td>";
							str += "<td>" + item.begin_d + "~" + item.end_d
									+ "</td>";
							str += "<td>" + item.cnt + "</td></tr>";
							$('.myTable').append(str);
						})
					} else if (result == "") {
						alert("값이 없습니다.");
					}
				}
			})
		}
	</script>
</body>
</html>

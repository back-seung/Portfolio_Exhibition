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
</style>
<title>Document</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/html/viewList.html">Exhibition
					Recommend</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/html/selectAll.html">VIEW LIST</a></li>
					<!-- MOD USER-->
					<li><a href="#">MY PAGE</a></li>
					<li><a href="/html/login.html">LOG OUT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="col-sm-12 col-md-12 item">
		<div class="thumbnail">
			<img class="img" src="<c:url value="/img/${rcmd.thumbFileName}"/>" />
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
				<td class="col-md-1">#NO
				</th>
				<td class="col-md-8">댓글</td>
				<td class="col-md-1">수정/삭제</td>
			</tr>
			<tr>
				<!-- C:forEach-->
				<td class="col-md-1">test</td>
				<td class="col-md-8">test</td>
				<td class="col-md-1"><a href=""> 수정</a> / <a href="">삭제</a></td>
			</tr>
		</table>
		<div class="input-group input-group-lg">
			<input type="text" class="form-control" name="reply"
				aria-describedby="sizing-addon1"> <span
				class="input-group-addon btn btn-default" id="sizing-addon1"><a
				href="">댓글등록</a></span>
		</div>
		<div class="text-center">
			<a class="btn btn-default home" href="/html/viewList.html">처음으로</a>
		</div>
</body>
</html>

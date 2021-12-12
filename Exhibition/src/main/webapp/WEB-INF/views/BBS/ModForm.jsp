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
					<li><a href="userMyPageForm">MY PAGE</a></li>
					<li><a href="logout">LOG OUT</a></li>
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
				<small><a href="#">제목 : ${rcmd.title}</a></small>
			</h2>
			<div class="caption">설명 : ${rcmd.info}</div>
			<hr />
			<div class="caption">${rcmd.begin_d}~${rcmd.end_d}</div>
		</div>
	</div>
	<form action="rcmdMod" method="post" encType="multipart/form-data">
		<div class="col-sm-12 col-md-12 item text-center">
			<div class="thumbnail">
				<h4>
					수정란
					<hr />
				</h4>
				<div class="caption">
					제목 수정 : <input type="text" name="title" placeholder="제목 입력" id="">
				</div>
				<div class="caption">
					설명 수정 : <input type="text" name="info" placeholder="설명 입력" id="">
				</div>
				<div class="caption">썸네일 수정 : 
					<input type="file" name="file">
				</div>
				<hr />
				<div>
					<a class="btn btn-default" href="ModUser">수정완료</a>
				</div>
			</div>
		</div>
	</form>
	<div class="text-center">
		<a class="btn btn-default home"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
</body>
</html>
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

.inputForm {
	margin-top: 10%; border-radius : 3%;
	opacity: 75%;
	border-radius: 3%;
}

.home {
	margin-top: 10%;
}
</style>
<title>Document</title>
</head>
<body>
	<div class="card text-center col-md-4 offset-md-4 shadow-lg inputForm">
		<form name="getUserIdPw">
			<h2>ID / PW 찾기</h2>
			<div class="caption">이름과 이메일을 입력해주세요</div>
			<div class="form-floating mb-3">
				<input type="email" class="form-control" name="name"
					placeholder="name"> <label for="floatingInput">Name
					입력</label>
			</div>
			<div class="form-floating mb-3">
				<input type="email" class="form-control" name="email"
					placeholder="name@example.com"> <label for="floatingInput">Email
					입력</label>
			</div>
			<input type="button" class="btn btn-secondary" onclick="findIdPw()"
				value="SEARCH">
		</form>
		<div class="	result-Form">
			<div class="caption">검색결과 입니다.</div>
			<h3>
				회원님의 ID : <strong>${user.id}</strong>
			</h3>
			<hr>
			<h3>
				회원님의 PW : <strong>${user.pw}</strong>
			</h3>
		</div>
	</div>
	<div class="text-center">
		<a class="btn btn-secondary home"
			href="${pageContext.request.contextPath}/">처음으로</a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function findIdPw() {
			$.ajax({
				type : 'GET',
				url : "userSearchIdPwForm/getSearchIdPw",
				data : $("form[name=getUserIdPw]").serialize(),
				success : function(result) {
					if (result != "") {
						$('#idForm > strong').empty();
						$('#pwForm > strong').empty();
						result.forEach(function(item)){
							str = 
						}
					}
				}
			})
		}
	</script>
</body>
</html>

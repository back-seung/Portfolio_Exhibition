<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Document</title>
<style>
body {
	background-color: #BDBDBD;
	color: #F5F5F5;
}

.inputForm {
	background-color: #9E9E9E;
	margin-top: 10%;
	border-radius: 3%;
	opacity: 75%;
	border-radius: 10%;
	margin-top: 5%;
}
</style>
</head>
<body>
	<div class="text-center">
		<h1 class="display-1 fw-bolder">Register</h1>
		<hr>
		<form action="userRegister" method="post">
			<div class="col-md-4 offset-md-4 shadow-lg inputForm">
				<div class="mt-4 p-4">
					<div class="col-sm-12">
						<label>ID</label>
					</div>
					<div class="input-group mb-3">
						<input type="text" id="id" class="form-control" name="id" value="">
						<input type="button" class="btn btn-outline-primary"
							onclick="checkID()" value="중복확인">
					</div>
					<div class="col-sm-12 result">
						<div></div>
					</div>
					<div class="col-sm-12">
						<label>Name</label> <input type="text" class="form-control"
							name="name" value="">
					</div>
					<div class="col-sm-12">
						<label class="form-label">PW</label> <input id="pw1"
							type="password" class="form-control pwForm" name="pw"> <span
							class="resultPw1"></span>
					</div>
					<div class="col-sm-12">
						<label class="form-label">PW CHECK</label> <input id="pw2"
							type="password" class="form-control"> <span
							class="resultPw2"></span>
					</div>
					<div class="col-sm-12">
						<label class="form-label">E-mail</label> <input id="email"
							type="email" class="form-control" name="email"> <span
							class="resultEmail"></span>
					</div>
					<p>
						<input type="submit" class="btn btn-secondary mt-3"
							onclick="checkRegex()" value="회원가입">
					</p>
				</div>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function checkID() {
			var id = $('#id').val(); // 1234
			$.ajax({
				url : "userDuplCheck",
				data : {
					id : id
				},
				success : function(result) {
					if (result == 0) {
						$(".result > div").empty();
						str = '<div>사용 가능<div>'
						$(".result").append(str);
						console.log(result);
					} else {
						$(".result").empty();
						str = '<div>중복된 ID<div>'
						$(".result").append(str);
						console.log(result);
					}
				},
				error : function() {
					alert("ERROR ! ");
				}

			});
		};


		$('#pw1').keyup(function() {
			var pwRe = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
			var pw1 = $('#pw1').val();
			if (pwRe.test(pw1)) {
				$('.resultPw1').empty();
				$('.resultPw1').append('GOOD :)');
			} else {
				$('.resultPw1').empty();
				$('.resultPw1').append('영대소문자 + 숫자 + 특수문자 포함하여 8글자 이상 입력해주세요');
			}

		});
		$('#pw2').keyup(function() {
			var pw1 = $('#pw1').val();
			var pw2 = $('#pw2').val();
			if (pw1 != pw2) {
				$('.resultPw2').empty();
				$('.resultPw2').append('비밀번호가 서로 일치하지 않습니다.');
			} else {
				$('.resultPw2').empty();
				$('.resultPw2').append('GOOD :)');

			}
		});
		$('#email')
				.keyup(
						function() {
							var emailRe = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
							var email = $('#email').val();
							if (emailRe.test(email)) {
								$('.resultEmail').empty();
								$('.resultEmail').append('GOOD :)');
							} else {
								$('.resultEmail').empty();
								$('.resultEmail').append('이메일 형식으로 입력해주세요 :(');
							}
						});
	</script>
</body>
</html>
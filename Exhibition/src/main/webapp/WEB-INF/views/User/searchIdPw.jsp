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
	color: #F5F5F5;
}

.inputForm {
	background-color: #9E9E9E;
	margin-top: 10%;
	border-radius: 3%;
	opacity: 75%;
	border-radius: 10%;
	margin-top: 10%;
}
</style>
<title>Document</title>
</head>
<body>
	<div class="text-center">
		<div class="inputForm col-md-4 offset-md-4 shadow-lg">
			<div class="mt-4 p-4">
				<form action="userSearch" method="get">
					<h2 class="display-3 fw-bolder">ID/PW 찾기</h2>
					<hr>
					<div class="col-sm-12">
						<label>NAME</label> <input type="text" class="form-control"
							name="name" value="">
					</div>
					<div class="col-sm-12">
						<label class="form-label">E-mail</label> <input type="text"
							class="form-control" name="email">
					</div>
					<p>
						<input type="submit" class="btn btn-secondary mt-3" value="SEARCH">
					</p>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		
	</script>
	<!--		<script>
			function findIdPw() {
				$.ajax({
				url : "userSearchIdPwForm/userSearch",
				type : 'POST',
				data : $('form[name=getUserIdPw]').serialize(),
				success : function(data) {
						alert(data.id + "" +data.pw);
						$('.resultForm > div').empty();
						str = '<div>';
						str += '<h5>' + "YOUR ID : " + '<h5>';
						str	+= '<div>' + data.id + '</div>';
						str += '<h5>' + "YOUR PW : " + '<h5>';
						str += '<div>' + data.pw + '</div>';
						str += '<a class="btn btn-secondary mt-3 mb-3" href="login">' + "LOGIN 이동" + '</a>';
						str += '</div>';
						$('.resultForm').append(str);
				}
			})
		}
		</script>
		 -->
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
    />

    <!-- 부가적인 테마 -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"
    />

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>Document</title>
  </head>
  <body>
    <div class="jumbotron text-center">
      <h2>ID / PW 찾기</h2>
      <div class="caption">이름을 입력해주세요</div><br>
      <input type="text" name="id" id=""><span><input type="submit" value="SEARCH"></span>
    </div>
    
      <p>
        <div class="thumbnail">
          <div class="caption">검색결과 입니다.</div>
          <h3>회원님의 ID : <strong>${user.id}</strong></h3><hr>
          <h3>회원님의 PW : <strong>${user.pw}</strong></h3>
        </div>
      </p>
            <div class="text-center">
      <a class="btn btn-default home" href="/html/viewList.html">처음으로</a>
    </div>
  </body>
</html>

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
          <a class="navbar-brand" href="/html/viewList.html"
            >Exhibition Recommend</a
          >
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
        <img class="img" src="/img/sayuroom.png" width=""/>
        <h2
          >SEOUL<hr /><small
            ><a href="#">국립중앙박물관, 사유의 방</a></small
          ></h2
        >
        <div class="caption">
          사유의 방은 삼국시대 6세기 후반과 7세기 전반에 제작된 우리나라의 국보
          반가사유상半跏思惟像 두 점을 나란히 전시한 공간이다. 어둡고 고요한
          복도를 지나면 왼쪽 무릎 위에 오른쪽 다리를 얹고 오른쪽 손가락을 살짝
          뺨에 댄 채 깊은 생각에 잠긴 반가사유상을 만나볼 수 있다. 뛰어난
          주조기술을 바탕으로 간결하면서도 생동감 넘치고, 화려하면서도 절제된
          근엄한 반가사유상의 모습은 인간의 생로병사에 대한 깊은 고뇌와 깨달음을
          상징한다.</div
        >
        <hr />
        <div class="caption">2021-11 ~ 2022-01</div>
      </div>
    </div>
    <div class="col-sm-12 col-md-12 item text-center">
      <div class="thumbnail">
        <h4> 수정란<hr /></h4>
        <div class="caption">제목 수정 : <input type="text" name="city" placeholder="제목 입력" id=""></div>
        <div class="caption">설명 수정 : <input type="text" name="name" placeholder="설명 입력" id=""></div>
        <hr />
        <div><a class="btn btn-default" href="ModUser">수정완료</a></div>
      </div>
    </div>
    <div class="text-center">
      <a class="btn btn-default home" href="/html/viewList.html">처음으로</a>
    </div>
  </body>
</html>
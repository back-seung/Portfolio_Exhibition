<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8" />
<title>Exhibition</title>
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
body {
	background-color: rgb(236, 236, 236);
}

.header {
	margin-bottom: 0px;
}

.font-lg {
	font-size: large;
}

.map {
	border-radius: 3%;
	border: 1px solid lightgray;
}

.notice {
	color: white;
}
</style>
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
	<div class="col-md-12 item">
		<div class="thumbnail font-lg">
			<div class="jumbotron text-center header">
				<h1>Exhibition Recommend</h1>
			</div>
			<div class="col-md-12 item">
				<div class="page-header font-lg">
					<div class="caption">
						<ul class="list-group">
							<span class="badge"><a class="notice" href="noticeList">
									NOTICE</a></span>
							<c:forEach var="ntcList" items="${ntcList}">
								<li class="list-group-item">${ntcList.notice}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<c:forEach items="${rcmd}" var="rcmd">
		<div class="col-sm-2 col-md-2 item">
			<span class="badge">HOT🔥  ${rcmd.cnt}</span>
			<div class="thumbnail">
				<img class="img" src="<c:url value="/img/${rcmd.thumbFileName}"/>" />
				<h2>
					${rcmd.city}
					<hr />
					<small><a href="#">${rcmd.title}</a></small>
				</h2>
				<div class="caption">${rcmd.info}</div>
				<hr />
				<div class="caption">${rcmd.begin_d}~ ${rcmd.end_d}</div>
			</div>
		</div>
	</c:forEach>	
	<span class="badge">YOUR CURRENT POS</span>
	<div class="map col-md-offset-3" style="width: 48%; height: 70%"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c5560b6913a89c394b9ccac44ec1aa38&libraries=services"></script>
	<script>
		var mapContainer = document.querySelector(".map"), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 10, // 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다
		if (navigator.geolocation) {
			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {
				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon);

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

				var geocoder = new kakao.maps.services.Geocoder();
				var usercoords = document.querySelector(".coord");
				var callback = function(result, status) {
					if (status === kakao.maps.services.Status.OK) {
						console.log(result[0].address.address_name);
					}
				};
				usercoords.innerHTML = geocoder.coord2Address(lon, lat,
						callback);
			});
		} else {
			// HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = "geolocation을 사용할수 없어요..";

			displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition,
			});
			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
		}
	</script>
	
</body>
</html>



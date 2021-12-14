<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8" />
<title>Exhibition</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c5560b6913a89c394b9ccac44ec1aa38&libraries=clusterer"></script>
<style>
body {
	background-color: #BDBDBD;
}

.font-lg {
	font-size: large;
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

	<div class="col-md-12 item mt-3 mb-3">
		<ul class="list-group">
			<h2>NOTICE</h2>
			<c:forEach var="ntcList" items="${ntcList}">
				<li class="list-group-item"><span class="badge bg-secondary">
						공지</span>&nbsp;${ntcList.notice}</li>
			</c:forEach>
		</ul>
	</div>
	<div id="carouselExampleIndicators" class="carousel slide mb-5"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<c:url value="/img/1.jpg"/>" class="d-inline w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/img/2.jpg"/>" class="d-inline w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="<c:url value="/img/3.jpg"/>" class="d-inline w-100"
					alt="...">
			</div>
		</div>
	</div>
	<div class="row row-cols-1 row-cols-md-4 g-4">
		<c:forEach items="${rcmd}" var="rcmd">
			<div class="col-md-2">
				<span class="badge bg-secondary"> views 🔥 : ${rcmd.cnt}</span>
				<div class="card h-100 c">
					<img src="<c:url value="/img/${rcmd.thumbFileName}"/>"
						class="card-img-top">
					<div class="card-body">
						<h5 class="card-title"></h5>
						${rcmd.city}
						<hr>
						<small class="fw-bolder">${rcmd.title}</small>
						<p class="card-text">${rcmd.info}</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">${rcmd.begin_d}~${rcmd.end_d}</small>
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="col-md-6">
			<span class="badge bg-secondary">YOUR CURRENT POS</span>
			<div class="card h-100 c">
				<div class="card-body">
					<div class="card-title">
						<div class="map card h-100"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
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
		
		var clusterer = new kakao.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 10
		// 클러스터 할 최소 지도 레벨 
		});
		
		$.get("json/myList.json", function(data) {
			// 데이터에서 좌표 값을 가지고 마커를 표시합니다
			// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
			var markers = $(data.positions).map(function(i, position) {
				return new kakao.maps.Marker({
					position : new kakao.maps.LatLng(position.x, position.y)
				});
			});

			// 클러스터러에 마커들을 추가합니다
			clusterer.addMarkers(markers);
		});
			
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



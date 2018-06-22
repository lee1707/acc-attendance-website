<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
	
 	<style>
 		img{
 			width:400px;
 			float:left;
 			margin-right:20px;
 			margin-bottom:20px;
 		}

 	</style> 


    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">ACC 소개</h1>
      <p class="lead">
        아리보 코딩 클럽을 찾아주신 여러분을 진심으로 환영합니다!<br><br>
        
        저희 아리보 코딩 클럽은 2016년 6월, 프로그래밍을 좋아하는 사람들이 만든 모임입니다.<br>
        저희는 매주 JAVA 프로그래밍을 함께 공부하면서 즐거운 시간을 가졌습니다.<br><br>

        2017년 11월, Atom Boys는 아리보 코딩 클럽으로 이름을 바꾸었습니다.<br>
        시간이 흐르면서, 프로그래밍에 대한 열정과 사랑은 점점 더 커지고 있습니다<br><br>
        
        여러분도 아리보 코딩 클럽과 함께 프로그래밍과 놀며 여러분의 꿈을 이루어보세요!<br><br>

        <img src="laptop.jpg.jpg" alt="">
        <p style="clear:both;">
	        <h2>스터디 주제</h2>
	        -JAVA<br>
	        -OCJP<br>
	        -Algorithm<br><br>
	
	        <h2>오시는길</h2>
	        -4호선 사당역 10번 출구, `카페 아리보`
	       <p></p>
        <div id="map" style="width:500px;height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2039dcd994e3f53dec5f6f534f63bbdf&libraries=services,clusterer,drawing"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new daum.maps.Coords(495828,1105296).toLatLng(),
				level: 3
			};
	
			var map = new daum.maps.Map(container, options);
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new daum.maps.Coords(495828,1105296).toLatLng();

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new daum.maps.MapTypeControl();

			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new daum.maps.ZoomControl();
			map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		</script>
    </main>

    <%@include file="Footer.jsp"%>
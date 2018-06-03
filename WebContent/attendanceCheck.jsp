<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@include file="Header.jsp"%>

<style>
	#abroad{
		color:Gainsboro;
	}
</style>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">출석확인</h1>
      <p class="lead">
      
      <main role="main" class="container">
      <h1 class="mt-5">출석현황</h1>
      <p class="lead">
        <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th>순번</th>
            <th>이름</th>
            <th>출결률</th>
            <th>총 출석일수</th>
            <th>비고</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="cnt" begin="0" end="${AttendanceList.listSize-1}">
        	<tr>
        		<td>${AttendanceList.num[cnt]}</td>
        		<td>${AttendanceList.name[cnt]}</td>
        		<td>${AttendanceList.attPercent[cnt]}</td>
        		<td>${AttendanceList.attTotal[cnt]}</td>
        		<td>${AttendanceList.extra[cnt]}</td>
        	</tr>
        </c:forEach>
        </tbody>
        </table>
        <c:if test="${!AttendanceList.lastPage}">
        	<a href='Attendance-list?LAST_SEQ_NO=${AttendanceList.num[AttendanceList.listSize-1]}'>다음페이지</a>
        </c:if>
        </div> 
      <h1 class="mt-5">월별 출결률</h1>
      <canvas class="my-4" id="myChart" width="900" height="150"></canvas>

      </p>
   	</main>
    

   	<%@include file="Footer.jsp"%>
   
    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["10월", "11월", "12월", "1월", "2월", "3월", "4월"],
          datasets: [{
            data: [70, 80, 90, 80, 70, 75, 70],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>
  </body>
</html>

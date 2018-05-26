<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">출석확인</h1>
      <p class="lead">
      
      <main role="main" class="container">
      <h1 class="mt-5">오늘 출석현황</h1>
      <p class="lead">
        <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>출결</th>
            <th>비고</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>이준영</td>
            <td>LJY</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_LJY" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_LJY" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
          <tr>
            <td>윤시훈</td>
            <td>YSH</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_YSH" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_YSH" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
          <tr>
            <td>이한솔</td>
            <td>RHS</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_RHS" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_RHS" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
          <tr>
            <td>오도근</td>
            <td>ODG</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_ODG" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_ODG" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
          <tr>
            <td>이강은</td>
            <td>LGE</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_LGE" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_LGE" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
          <tr>
            <td>최평강</td>
            <td>CPG</td>
            <td>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_CPG" value="attendance" id="attendance">
                <label class="form-check-label" for="attendance">출석</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chk_info_CPG" value="absent" id="absent" checked>
                <label class="form-check-label" for="absent">결석</label>
              </div>
            </td>
            <td>
              <input class="form-control" type="text" name="memo" placeholder="Please type the memo.">
            </td>
          </tr>
        </tbody>
      </table>
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

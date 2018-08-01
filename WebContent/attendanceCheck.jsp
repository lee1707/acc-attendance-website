<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>출석부</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
  </head>

  <body>

    <header>
      <!-- Fixed navbar -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="Main.jsp">Arivo Coding Club</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="Main.jsp">홈 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="intro.html">ACC소개</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">Disabled</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">학습활동</a>
              <div class="dropdown-menu" aria-labelledby="dropdown01">
                <a class="dropdown-item" href="attendanceInput.html">출결입력</a>
                <a class="dropdown-item" href="attendanceCheck.html">출석확인</a>
                <a class="dropdown-item" href="progress.html">진도표</a>
                <a class="dropdown-item" href="board-list">게시판</a>
              </div>
            </li>
          </ul>
        <form class="form-inline my-2 my-lg-0">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="signinForm.html">로그인</a></button>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><a href="signup.html">회원가입</a></button>
        </form>
        </div>
      </nav>
    </header>

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
      <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p>
    </main>

    <footer class="footer">
      <div class="container">
        <span class="text-muted">Place sticky footer content here.</span>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="popper.min.js"></script>
    <script src="bootstrap.min.js"></script>

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
          labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월"],
          datasets: [{
            data: [100, 95, 100, 90, 80, 60, 70],
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

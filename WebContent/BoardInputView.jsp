<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">학습 게시판 글쓰기</h1>
      <p class="lead">
        <body>
          <p class="lead">
        <body>
          <div class="table-responsive">
            <table class="table">
                <tr>
                  <td width="300">
                    <form action=BoardInput.jsp method=post>
                    <input class="form-control" style="width: 850px;" type="text" name="title" placeholder="Please type the title">
                  </td>
                </tr>
                <br>
                <div>
                  <td width="300">
                   <textarea class="form-control" style="width: 850px; height: 200px;" cols="5" name="content" placeholder="Please type the content." autofocus required wrap="hard"></textarea>
                  </td>
                  </td>
                </div>
            </table>
          </div>
        </body>
      </p>
          <div class="row">
            <div class="col-lg-12 text-center">
              <button class="btn btn-info" type="submit" value="SAVE">저장</button>
                <button class="btn btn-light" type="reset"><a href='board-list'>취소</a></button>  
            </div>
          </div>  
        </form> 
      

        </body>
        </html>
      </p>
    </main>

<%@include file="Footer.jsp"%>

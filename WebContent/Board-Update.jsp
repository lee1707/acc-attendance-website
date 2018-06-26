<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="boardItem" class="com.acc.attendance.model.BoardItem"/>
<jsp:setProperty name="boardItem" property="seqNo" value="${param.SEQ_NO}" />
<% boardItem.readDB(); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="Header.jsp"%>

    <!-- Begin page content -->
    <main role="main" class="container">제목:
      <h1 class="mt-5"><input type="text" name="title" ></h1>
      <p class="lead">
        <body>
          <div class="table-responsive">
            <table class="table">
                <tr>
                  <td width="300">
                    <strong>작성자</strong> ${boardItem.writer} &nbsp;
                    <strong>작성일지</strong> ${boardItem.date} ${boardItem.time}
     				<strong>조회수</strong>
                  </td>
                </tr>
                <br>
                <div>
                  <td width="300">
                    ${boardItem.content}
                  </td>
                </div>
                </table>
          </div>
          <div> 
          		<a href="board-list" class="list-page"><button class="btn btn-light">목록</button></a>
				
				<a href="Board-Update.jsp" class="list-page">
				<button class="btn btn-light">수정</button></a>
				
				<a href="board-list?LAST_SEQ_NO=${BOARD_LIST.seqNo[BOARD_LIST.listSize - 1]}" class="list-page">
				<button class="btn btn-light">답변</button></a>
        	  	
        	  	<a href="board-list?LAST_SEQ_NO=${BOARD_LIST.seqNo[BOARD_LIST.listSize - 1]}" class="list-page">
				<button class="btn btn-light">삭제</button></a>
		 </div>
		 </body>
      </p>
    </main>

    <%@include file="Footer.jsp"%>
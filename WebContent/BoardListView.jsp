<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">게시판 목록 보기</h1>
       <div class="table-responsive">
         <table class="table">
           <thead>
             <tr>
               <th width=40>순번</th>
               <th width=300>제목</th>
               <th width=80>작성자</th>
               <th width=90>작성일자</th>
               <th width=70>작성시각</th>
             </tr>
           </thead>
           <tbody>
             <c:forEach var="cnt" begin="0" end="${BOARD_LIST.listSize -1}">
               <tr>
                 <td>${BOARD_LIST.seqNo[cnt]}</td>
                 <td><a href='BoardItemView.jsp?SEQ_NO=${BOARD_LIST.seqNo[cnt]}'>${BOARD_LIST.title[cnt]}</a></td>
                 <td>${BOARD_LIST.writer[cnt]}</td>
                 <td>${BOARD_LIST.date[cnt]}</td>
                 <td>${BOARD_LIST.time[cnt]}</td>
               </tr>
             </c:forEach>
           </tbody>
         </table>
       </div>
		<div class="row">
			<div class="col-lg-12">
				<c:if test="${!BOARD_LIST.firstPage}">
					<a href="board-list?FIRST_SEQ_NO=${BOARD_LIST.seqNo[BOARD_LIST.listSize + 1]}" class="list-page">
						<button class="btn btn-light">이전 페이지</button></a>
				</c:if>
				<c:if test="${!BOARD_LIST.lastPage}">
					<a href="board-list?LAST_SEQ_NO=${BOARD_LIST.seqNo[BOARD_LIST.listSize - 1]}" class="list-page">
						<button class="btn btn-light">다음 페이지</button></a>
				</c:if>
				<a href="BoardInputView.jsp" class="list-page">
					<button type="button" class="btn btn-light">글쓰기</button></a>
			</div>
		</div>
    </main>

    <%@include file="Footer.jsp"%>
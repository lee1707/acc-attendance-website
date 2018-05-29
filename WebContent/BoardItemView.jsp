<%@page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="boardItem" class="com.acc.attendance.model.BoardItem"/>
<jsp:setProperty name="boardItem" property="seqNo" value="${param.SEQ_NO}" />
<% boardItem.readDB(); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="Header.jsp"%>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">${boardItem.title}</h1>
      <p class="lead">
        <body>
          <div class="table-responsive">
            <table class="table">
                <tr>
                  <td width="300">
                    <strong>작성자</strong> ${boardItem.writer} &nbsp;
                    <strong>작성일지</strong> ${boardItem.date} ${boardItem.time}
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
        </body>
      </p>
    </main>

    <%@include file="Footer.jsp"%>
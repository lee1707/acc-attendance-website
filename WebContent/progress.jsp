<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  </head>

  <body>

    <!-- Begin page content -->
    <main role="main" class="container">
      <h1 class="mt-5">진도표</h1>
      <p class="lead">
        
      <h3 class="mt-5">OCJP</h3>
      
      <table>
      	<tr>
      		<td>순번</td>
      		<td>공부제목</td>
      		<td>progress(%)</td>
      	</tr>
      	<c:forEach var="cnt" begin="0" end="${Progress_ListBean.listSize -1 }">
      		<tr>
      			<td width="50">${Progress_ListBean.num[cnt]}</td>
      			<td width="100">${Progress_ListBean.name[cnt]}</td>
      			<td width="800">
      			<div class="progress">
     			<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: ${Progress_ListBean.progress[cnt]}%"></div>
     	 		</div>
     	 		</td> 
      		</tr>
      	</c:forEach>
      </table>
      
      <c:if test="<td>${!Progress_ListBean.lastPage}">
      	<a href='Progress-list?LAST_SEQ_NO=${Progress_ListBean.num[Progress_ListBean.listSize-1]}'>다음페이지</a>
      </c:if>
      


      </p>
      <p>
      <div class="row">
            <div class="col-lg-12 text-center">
              <button class="btn btn-info" type="submit" value="SAVE">추가</button>
                <button class="btn btn-light" type="reset"><a href='board-list'>수정</a></button>  
            </div>
          </div>  
      </p>

<%@include file="Footer.jsp"%>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
 

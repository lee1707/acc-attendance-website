<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

<%@page import="java.sql.*"%>

<!-- Custom styles for this template -->
<link href="sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>

<body>

	<!-- Begin page content -->
	<main role="main" class="container">
	<h1 class="mt-5">진도표</h1>
	<p class="lead">
	<h3 class="mt-5">OCJP</h3>

	<form action=progressSetting.jsp method=post>
		Exam A
		<div class="progress">
			<div class="progress-bar progress-bar-striped progress-bar-animated"
				role="progressbar" aria-valuenow="75" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%"></div>
		</div>
		<div>
			수정<input type="text" placeholder="(%)" name="exam1" />
		</div>
		Exam B
		<div class="progress">
			<div class="progress-bar progress-bar-striped progress-bar-animated"
				role="progressbar" aria-valuenow="75" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%"></div>
		</div>
		<div>
			수정<input type="text" placeholder="(%)" name="exam2" />
		</div>
		Exam C
		<div class="progress">
			<div class="progress-bar progress-bar-striped progress-bar-animated"
				role="progressbar" aria-valuenow="75" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%"></div>
		</div>
		<div>
			수정<input type="text" placeholder="(%)" name="exam3" />
		</div>
		Exam D
		<div class="progress">
			<div class="progress-bar progress-bar-striped progress-bar-animated"
				role="progressbar" aria-valuenow="75" aria-valuemin="0"
				aria-valuemax="100" style="width: 75%"></div>
		</div>
		<div>
			수정<input type="text" placeholder="(%)" name="exam4" />
		</div>
	</form>

	</p>
	<p>
	<div class="row">
		<div class="col-lg-12 text-center">
			<button class="btn btn-info" type="submit" value="SAVE">저장</button>
			<button class="btn btn-light" type="reset"><a href='progress.jsp'>취소</a></button>  
            </div>
		</div>
	</div>
	</p>

	<%@include file="Footer.jsp"%> <!-- Bootstrap core JavaScript
    ================================================== --> <!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script> <script>
			window.jQuery
					|| document
							.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')
		</script>
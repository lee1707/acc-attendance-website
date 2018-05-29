<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

<!-- magic style -->
<link rel="stylesheet" href="/acc-attendance/assets/css/magic.css">

<!-- button style -->
<link rel="stylesheet" href="/acc-attendance/assets/css/buttons.css">

<link href="https://fonts.googleapis.com/css?family=Hi+Melody|Luckiest+Guy" rel="stylesheet">

<style>

#font1{
	font-family: 'Luckiest Guy', cursive;
	color: #FF9900;
}

.font2{
	color: white;
}


.jumbotron{
	transition: all 2s;
}
.jumbotron {
	height:520px;
	padding: 2rem 1rem;
	margin-bottom: 2rem;
	background-image: url('science-fiction.jpg');
	border-radius: .3rem;
	background-size: cover;
	
}


.zoom{
    display: inline-block;
    vertical-align: middle;
    transform: translateZ(0);
    box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    backface-visibility: hidden;
    -moz-osx-font-smoothing: grayscale;
    transition-duration: 0.3s;
    transition-property: transform 1s;
}

.zoom:hover,
.zoom:focus,
.zoom:active {
    transform: scale(1.1);
}

#video{
	top: 300px;
	left: 100px;
	position: absolute;
	height: 300px;
	width: 300px;
}

@keyframes float {
	0% {
		box-shadow: 0 5px 15px 0px rgba(0,0,0,0.6);
		transform: translatey(0px);
	}
	50% {
		box-shadow: 0 25px 15px 0px rgba(0,0,0,0.2);
		transform: translatey(-20px);
	}
	100% {
		box-shadow: 0 5px 15px 0px rgba(0,0,0,0.6);
		transform: translatey(0px);
	}
}

.container {
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.avatar {
	text-align: right;
}

.avatar a {
	display:inline-block;
	width: 150px;
	height: 150px;
	box-sizing: border-box;
	border: 5px white solid;
	border-radius: 50%;
	overflow: hidden;
	box-shadow: 0 5px 15px 0px rgba(0,0,0,0.6);
	transform: translatey(0px);
	animation: float 6s ease-in-out infinite;
	background-image: url('super-mario.jpg');
	background-position: center;
	background-size: cover;
	
}

.short-links {
	text-align: center;
}
.button {
	white-space: nowrap;
}

</style>
</head>

	<main role="main"> <!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<div class="center jumbovidtext" style="margin-top:3rem">
			<h1 class="display-3" id="font1">Arivo Coding Club(ACC)</h1>
			
			<div class="font2">
			안녕하세요, 여러분! 아리보 코딩 클럽에 방문한 여러분을 진심을 환영합니다. 
			아리보 코딩 클럽은 JAVA를 공부하는 모임입니다.
			</div>
			
			<p>
				<a class="zoom button button-3d button-action button-pill" href="intro.html" role="button">더
					알고싶어요 &raquo;</a>
			</p>
			
			<div class="avatar">
				<a href="intro.jsp">&nbsp;</a>
			</div>
			
			</div>
			<!--  
			<video id="video" preload="auto" autoplay="true" loop="loop" muted="muted"
			volumn="0"><source src="Notebook.mp4" type="video/mp4"/></video>
			-->
		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-4 short-links">
				<a class="zoom button button-3d button-action button-pill" href="progress.html"
						role="button">진도표 보러가기&raquo;</a>			
			</div>
			<div class="col-md-4 short-links">
				<a class="zoom button button-3d button-action button-pill" href="attendanceInput.jsp"
						role="button">출결 입력 하기&raquo;</a>
			</div>
			<div class="col-md-4 short-links">
				<a class="zoom button button-3d button-action button-pill" href="board-list" role="button">게시판
						보러가기 &raquo;</a>
			</div>
		</div>

	</div></main>
	<%@include file="Footer.jsp"%>
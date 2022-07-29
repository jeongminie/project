<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<!-- 제이쿼리 -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<link rel="stylesheet" href="/resources/static/css/style.css">
	
  	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/9a0994e5cb.js" crossorigin="anonymous"></script>
	
  	<!-- google font -->
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
	
	<title>메인</title>
	
	<style>
		body {
			background-image: url('/resources/static/image/micro_carbon.png');
			color : white;
		}
		
		.front-area {
			margin: auto;
			margin-top: 15px;
			width : 60%;
		}
		
		.logo {
			width : 170px;
			height : 90px;
			position: absolute;
			top : 0%;
			right : 46%;
		}
		
		.user {
			position: absolute;
			top : 6.5%;
			right : 20%;
		}
		
		a {
			text-decoration-line: none;	
			color : white !important;
		}
		
		a:hover {
			color : white;
		}
		
		ul {
			list-style : none;
			/* overflow : auto; */
			padding-left : 0px;
			padding-right : 0px;
		}
		
		.cont-area {
			margin: auto;
			margin-top : 50px;
			width : 60%;
			height : 600px;
			text-align: center;
		}
		
		.rank-list {
			display: flex;
			justify-content: space-around;
		}
		
		/* .rank-box {
			width : 250px;
			height : 400px;
			position: relative;
		} */
		
		.rank-item {
			width : 250px;
			height : 400px;
			position: relative;
		}
		
		.poster {
			width: 100%;
			height: 100%;
			object-fit: cover;
			border-radius : 5px;
		}
		
		.wrap {
			display : none;
			width: 100%;
			height: 100%;
			opacity: 0.5;
			background-color : black;
			border-radius : 5px;
			position :absolute;
			top : 0%;
		}
		
		.summary {
			display: flex;
			margin: 15px;
			border-bottom: 1px solid #EBEBEB;
		}
		
		.booking-btn {
			background-color: #037B94;
			color : white;
			border : 0px;
		}
		
		.booking-btn:hover {
			background-color: #037B94;
			color : white;
			border : 0px;
		}
				
		.search-link {
			overflow:hidden; 
			display:block; 
			height:75px;
			margin:100px 0 0 0; 
			padding:23px 0 0 0; 
			background-color:rgba(0,0,0,0.2);
		}
		
		.search-link .cell {
			position:relative; 
			float:left; 
			width:25%; 
			text-align:center; 
			border-left:1px solid #423e3e;
		}
		
		.search-link .cell:first-child {
			border-left:0;
		}
		
		.search-link .search {
			position:relative; 
			display:inline-block; 
			width:200px; 
			height:30px; 
			padding:0 30px 0 0; 
			border-bottom:1px solid #423e3e;
		}
		
		.search-link .search .input-text {
			display:block; 
			width:100%; 
			height:100%; 
			border:0; 
			background-color:transparent; 
			color:#fff;
		}
		
		.search-link .search .input-text::placeholder {
			color:#aaa; 
			opacity: 1;
		}
		
		.search-link .search .input-text:-ms-input-placeholder {
			color:#aaa;
		}
		
		.search-link .search .input-text::-ms-input-placeholder {
			color:#aaa;
		}
		
		.search-link .search .btn {
			display:block; 
			position:absolute; 
			right:0; 
			top:0; 
			width:30px; 
			height:100%; 
			font-size:0; 
			line-height:0; 
			margin:0; 
			padding:0; 
			border:0; 
			background-color:transparent;
		}
		
		.search-link a {
			display:inline-block; 
			margin:0; 
			padding:0; 
			line-height:30px; 
			color:#fff;
		}
		
		.search-link a .iconset {
			margin-top:-2px; 
			margin-right:5px;
		}

	</style>
</head>
<body>
	<div>
		<header>
			<div class="front-area">
				<div class="center-link">
					<a href="javascript:location.reload()"><img src="/resources/static/image/logo.png" class="logo"></a>
				</div>
				<div class="right-link d-flex justify-content-end">
					<a href="#" class="mr-3 login" data-bs-toggle="modal" data-bs-target="#loginModal">로그인</a>
					<a href="#" class="signup">회원가입</a>
				</div>
				<nav class="menu mt-3">
					<ul class="nav nav-pills nav-fill">
						<li class="nav-item nav-title dropdown">
							<a class="nav-link nav-title-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" disabled>영화</a>
							<ul class="nav-sub dropdown-menu">
								<li><a class="nav-link" href="#">상영중인 영화</a></li>
								<li><a class="nav-link" href="#">상영예정 영화</a></li>
							</ul>
						</li>
						<li class="nav-item nav-title dropdown">
							<a class="nav-link nav-title-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">극장</a>
						</li>
						<li class="nav-item nav-title dropdown">
							<a class="nav-link nav-title-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" disabled>예매</a>
							<ul class="nav-sub dropdown-menu">
								<li><a class="nav-link" href="#">CGV</a></li>
								<li><a class="nav-link" href="#">메가박스</a></li>
							</ul>
						</li>
						<li class="nav-item nav-title dropdown">
							<a class="nav-link nav-title-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">예매내역</a>
						</li>
					</ul>
				</nav>
				<div class="user">
					<a href="#"><i class="fa-solid fa-user"></i></a>
				</div>	
			</div>
		</header>
		<section class="cont-area">
			<div>
				<p>박스오피스</p>
				<ul class="rank-list">
					<li class="rank-item">
						<img class="poster" src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005">				
						<div class="wrap">
							<div class="summary h-75">
								<p>한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다! 최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.</p>
							</div>
							<div class="score">
								<p>관람평</p>
							</div>
						</div>
						<button type="button" class="btn booking-btn mt-2">예매하기</button>
					</li>
					<li class="rank-item">
						<img class="poster" src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005">				
						<div class="wrap">
							<div class="summary h-75">
								<p>한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다! 최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.</p>
							</div>
							<div class="score">
								<p>관람평</p>
							</div>
						</div>
						<button type="button" class="btn booking-btn mt-2">예매하기</button>
					</li>
					<li class="rank-item">
						<img class="poster" src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005">				
						<div class="wrap">
							<div class="summary h-75">
								<p>한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다! 최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.</p>
							</div>
							<div class="score">
								<p>관람평</p>
							</div>
						</div>
						<button type="button" class="btn booking-btn mt-2">예매하기</button>
					</li>
					<li class="rank-item">
						<img class="poster" src="https://t1.daumcdn.net/movie/4eb261668eb43a125d0adc250a89adb48216c005">				
						<div class="wrap">
							<div class="summary h-75">
								<p>한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다! 최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.</p>
							</div>
							<div class="score">
								<p>관람평</p>
							</div>
						</div>
						<div class="btn-util">
							<button type="button" class="btn booking-btn mt-2">예매하기</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="search-link">
				<div class="cell">
					<div class="search">
						<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
						<button type="button" class="btn" id="btnSearch"><i class="fa-solid fa-magnifying-glass"></i>검색</button>
					</div>
				</div>
				<div class="cell"><a href="#" title="상영시간표 보기"><i class="fa-solid fa-calendar-days mr-2"></i>상영시간표</a></div>
				<div class="cell"><a href="#" title="박스오피스 보기"><i class="fa-solid fa-film mr-2"></i>박스오피스</a></div>
				<div class="cell"><a href="#" title="빠른예매 보기"><i class="fa-solid fa-ticket-simple mr-2"></i>예매</a></div>
			</div>
		</section>
	</div>
	
	<!-- modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content" role="document">
				<div class="modal-header">
					<span class="modal-title">로그인</span>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body d-flex justify-content-center">
					<div>
						<input type="text" class="form-control mb-2" placeholder="아이디">
						<input type="password" class="form-control mb-3" placeholder="비밀번호">
						<button type="button" class="btn login-btn w-100 mb-3">로그인</button>
						<p class="d-flex justify-content-center">
							<a href="#" class="text-dark">ID/PW 찾기</a>
							<span class="mr-3 ml-3">|</span>
							<a href="#" class="text-dark">회원가입</a>
						</p>
					</div>
					
				</div>
				<div class="modal-footer">
					<!-- <button type="button" class="btn" data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn deleteBtn">삭제하기</button> -->
				</div>
			</div>
		</div>
	</div>
	
	<script>
 		$(document).ready(function(){
 			$(".signup").on("click", function(){
 				location.href="sign/signupForm.jsp";
 			});
 			
 			$(".nav-sub").hide();
 			
			/* $(".nav-title").on("mouseover", function(){
				$(this).children(".nav-sub").stop().slideDown(200);
			}); */
			
			/* $(".nav-title-item").on("mouseover", function(){
				$(".nav-title").children(".nav-sub").stop().slideDown(200);
			}); */
			
			$(".nav-title-item").on("mouseover", function(){
				$(this).parent(".nav-title").children(".nav-sub").stop().slideDown(200);
			});
			
			$(".nav-title").on("mouseleave", function(){
				$(this).children(".nav-sub").stop().slideUp(200);
			});
			
			
			$(".rank-item").on("mouseover", function(e){
				if ($(e.target).is('.poster')) {
					$(".wrap").fadeIn();
			    }
				
			}); 
			
			$(".rank-item").on("mouseleave", function(){
				$(".wrap").fadeOut();
			});
			
		});
	</script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
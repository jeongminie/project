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
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
	<script type="text/javascript" src="../include/js/header.js"></script>
	<link rel="stylesheet" href="/resources/static/css/style.css">
	
  	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/9a0994e5cb.js" crossorigin="anonymous"></script>
	
  	<!-- google font -->
  	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
	
	<title>예매정보 알림 신청</title>
	
	<style>
    #filter-area {
    	width : 1000px;
    	height: 600px;
    	margin : auto;
    	margin-top : 40px;
    	display: flex;
    	border-bottom: 1px solid #EBEBEB;
    }
    
    .movie-item {
    	width : 300px;
    	height: 600px;
    	border-left : 1px solid #EBEBEB;
    	color : white;
    }
    
    .movie-item-end {
    	width : 400px;
    	height: 600px;
    	color : white;
    	border-left: 1px solid #EBEBEB;
    	border-right: 1px solid #EBEBEB;
    }
    
    .div-title {
    	height : 40px;
    	background-color: #CA0181;
    	text-align: center;
    	padding: 8px;
    }
    
 
	</style>
		
</head>
<body>
	<div id="wrap">
	<jsp:include page="../include/jsp/header_white.jsp" />
		<section>
			<div id="filter-area">
				<div class="movie-item">
					<div class="div-title">영화</div>
				</div>
				
				<div class="movie-item">
					<div class="div-title">극장</div>
				</div>
				
				<div class="movie-item-end">
					<div class="div-title" id="time" autofocus>시간</div>
				</div>
			</div>
		</section>
	</div>
	
	<script>
		$(document).ready(function(){
			$("#time").datepicker({
				dayNamesMin:['월', '화', '수', '목', '금', '토', '일']
				,
				
			});
		});
	</script>
	
	
</body>
</html>
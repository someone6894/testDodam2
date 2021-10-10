<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dodam dodam</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>




<script type="text/javascript"> $.noConflict(); </script>


<script>
$(document).ready(function(){ 
	$('.bxslider').bxSlider({
		   auto: true, // 자동 슬라이드 
		   autoControls: false, // 시작, 정지버튼 노출 여부 
		   controls: false, // prev/next 버튼 노출 여부 
		   pager: false, // 블릿버튼
	   });
	 });

</script>

<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

.banner0 {
	height: 50px;
	text-align: center;
	font-size: 30px;
	font-family: 'Nanum Pen Script', cursive;
	margin-right: 20px;
}

.login {
	font-size: 20px;
}

.banner {
	height: 350px;
	background-color: #3C6E9F;
	<!--
	test2
	.jpg와
	같은
	색상
	-->
}

#bannerimg {
	margin: 0 auto;
	/*     margin-top : 25px; */
	position: relative;
	display: block;
}

.nav0 {
	/* 	background-color: yellow; */
	
}

.menu {
	background-color: white;
	margin: 0 auto;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	/* 			background-color: #F9F9F9; */
	/* 			min-width: 160px; */
	/* 			padding: 8px; */
	/* 			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); */
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	color: black;
	text-decoration: none;
	display: block;
}



</style>
</head>
<body>




	<div class="banner0">
		<span> 도담 도담. 아가야 건강하고 오래오래 자라렴 </span>

		<ul class="nav navbar-nav navbar-right login">
			<li><a href="/member/register"><span
					class="glyphicon glyphicon-user"></span> 회원가입</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
					로그인</a></li>
		</ul>
	</div>

	<div class="banner">
		<img id='bannerimg' src='../resources/images/test2.jpg' width="auto"
			height="300px;" />
	</div>



	<!-- class = navbar navbar-inverse -->
	<nav class="menu">
		<div class="container">
			<div class="navbar-header"></div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">메인</a></li>
				<li><a href="#">공지사항</a></li>

				<!--       <li><a href="/board/register">게시판 만들기</a></li> -->
				<li><a href="/board/listAll">찾기,보호,분양</a></li>


				<li><a href="/board/publicAdoptList">유기동물 공고</a>
				<li class="dropdown"><a href="#">동물보호소 찾기</a>
					<ul class="dropdown-content">
						<a href="#">공공기관 찾기</a>
						<a href="#">동물병원 찾기</a>
					</ul></li>
			</ul>
		</div>
	</nav>

<%-- 	<jsp:include page="adoptboardmini.jsp"></jsp:include> --%>
	
	<!-- <div class="container"> -->

	<!--   <h1>메인 페이지를 어떻게 꾸밀까요</h1> -->
	<!--   <p1> 기능구현이 주력이기 때문에 메인 페이지는 간단하고 깔끔해서 비어보이지만 않게끔 로고 블럭버튼 형식으로 꾸밀까요? ex) 건보공단 홈페이지</p1> -->

	<!--   <h3>메인 바디</h3> -->
	<!--   <p> 부트스트랩 각종 폼 따와서 넣어서 메인바디 꾸미기  -->
	<!--       ex) 인풋 폼, 리스트 폼, 페이징 넘버 폼 etc -->
	<!--   </p> -->
	<!-- </div> -->


<!-- 	<div class="bxslider"> -->
<!-- 		<div> -->
<!-- 			<img -->
<!-- 				src="https://movie-phinf.pstatic.net/20200721_250/1595306482797hfWqC_JPEG/movie_image.jpg?type=m665_443_2" -->
<!-- 				alt="슬라이드 이미지1"> -->
<!-- 		</div> -->
<!-- 		<div> -->
<!-- 			<img -->
<!-- 				src="https://movie-phinf.pstatic.net/20200721_131/1595306483541uxv0I_JPEG/movie_image.jpg?type=m665_443_2" -->
<!-- 				alt="슬라이드 이미지2"> -->
<!-- 		</div> -->
<!-- 	</div> -->

		<jsp:include page="adoptboardmini.jsp"></jsp:include>
	
</body>
</html>


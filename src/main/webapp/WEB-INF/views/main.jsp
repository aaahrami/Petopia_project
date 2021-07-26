<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="utf-8">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Petopia</title>


<style type="text/css">
.ss{
margin-top: 15px;
}
.girdscc{
margin-right : 15% !important;
}
.girdscc2{
margin-right : 14% !important;
}
.girdscc3{
margin-right : 16% !important;
}
  .swiper-container {
  		color:black;
        width: 100%;
        height: 100%;
      }

      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }

      .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
</style>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/petopia/css/menu_test2.css">
<link rel="stylesheet" href="/petopia/css/nomalize.css">
<link rel="stylesheet" href="/petopia/css/index.css">
<link rel="stylesheet" href="/petopia/css/main-homepage.css">
<!-- Custom styles for this template -->
<script src="https://kit.fontawesome.com/f1def33959.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="/petopia/images/petopia_logomini.png">
	
</head>

<body>

	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div class="menu-wrapper">
						<div class="links">
							<c:choose>
								<c:when test="${empty sessionScope.principal}">
									<a href="/member/joinAgree" class="link_text">회원가입</a>
									<a href="/member/login" class="link_text">로그인</a>
									<a href="#" class="link_text">고객센터</a>
								</c:when>
								<c:otherwise>
									<a href="/member/mypage" class="link_text">마이페이지</a>
									<a href="/member/logout" class="link_text">로그아웃</a>
									<a href="#" class="link_text">고객센터</a>
								</c:otherwise>
							</c:choose>
						</div>

						<nav class="header-nav">
							<div id="leftmenuToggle" class="leftmenuToggle">
								<input type="checkbox" /> <span></span> <span></span> <span></span>
								<ul id="leftmenu" class="hoverEvent">
									<div class="adiv">
										<li><a href="petstagram">펫★그램</a></li>
										<li><a href="main">펫shop</a></li>
										<li><a href="donation">기부</a></li>
										<li><a href="mypage"><i class="fas fa-paw"></i> MY</a></li>
									</div>
								</ul>
							</div>
							<!-- Logo -->
							<div class="logo">
								<a href="main"><img src="/petopia/images/petopia_logo.png" alt=""></a>
							</div>
						</nav>

						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="petstagram">펫★그램</a></li>
									<li><a href="main">펫shop</a></li>
									<li><a href="donation">기부</a></li>
									<li><a href="mypage"><i class="fas fa-paw"></i> MY</a></li>
								</ul>
							</nav>
						</div>
						<!-- Header Right -->
						<div class="search">
							<input type="text" class="searchForm" placeholder="검색어를 입력해주세요."
								aria-label="Recipient's username" aria-describedby="button-addon2">
							<button class="searchBtn" type="submit">
								<i class="fas fa-search"></i>
							</button>
							<button class="wishBtn" type="link">
								<i class="fas fa-heart"></i>
							</button>
							<button class="cartBtn" type="link">
								<i class="fas fa-shopping-cart"></i>
							</button>
						</div>

						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-none d-lg-block"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<hr />
	<div class="container-fluid">





		<div class="container-fluid maginContainer">


			<div class="row">
				<div class="container-side">
					<div class="grid">
						<div class="row">
							<div class="col-3">
								<!-- category -->
								<nav class="category">
									<div class="ctghead">
										<h3>
											<i class="ti-list"></i>펫shop
										</h3>
									</div>

									<ul class="ctgul">
										<li class="ctgli"><a href="#" class="ctga"><i class="ti-user"></i>신상품</a></li>

										<li class="ctgli"><a href="#" class="ctga"><i class="ti-user"></i>베스트</a></li>

										<li class="ctgli"><a href="#" class="ctga"><i class="ti-user"></i>이벤트</a></li>

										<li class="ctgli"><a href="#" class="ctga "> <i class="ti-write"></i> 카테고리 <i
												class="ti-angle-down down "></i>
										</a>
											<ul class="ctgulChild">
												<li class="ctgliChild"><a href="" class="ctgaChild">사료</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">간식</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">위생/배변</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">미용/목욕</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">급식/급수기</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">장난감/훈련</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">하우스/이동장</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">패션/의류</a></li>
												<li class="ctgliChild"><a href="" class="ctgaChild">목줄/하네스</a></li>
											</ul></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>




			</div>

			<div class="container girdscc">
				<div class="col-md-12 ">
					<div id="carousel-2" class="carousel slide carousel-fade" data-ride="carousel"
						data-interval="3000">
						<ol class="carousel-indicators">
							<li data-target="#carousel-2" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-2" data-slide-to="1"></li>
							<li data-target="#carousel-2" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">

							<div class="carousel-item active">
								<a href="https://bootstrapcreative.com/"> <img
									src="https://dummyimage.com/1000x400/444/" alt="responsive image" class="d-block img-fluid"
									width="100%">

									<div class="carousel-caption">
										<div>
											<h2>Digital Craftsmanship</h2>
											<p>We meticously build each site to get results</p>
											<span class="btn btn-sm btn-outline-secondary">Learn More</span>
										</div>
									</div>
								</a>
							</div>
							<!-- 상단 끝 -->


							<div class="carousel-item">
								<a href="https://bootstrapcreative.com/"> <img
									src="https://dummyimage.com/1000x400/444/" alt="responsive image" class="d-block img-fluid"
									width="100%">

									<div class="carousel-caption justify-content-center align-items-center">
										<div>
											<h2>Every project begins with a sketch</h2>
											<p>We work as an extension of your business to explore solutions</p>
											<span class="btn btn-sm btn-outline-secondary">Our Process</span>
										</div>
									</div>
								</a>
							</div>
							<!-- /.carousel-item -->
							<div class="carousel-item">
								<a href="https://bootstrapcreative.com/"> <img
									src="https://dummyimage.com/1000x400/444/" alt="responsive image" class="d-block img-fluid"
									width="100%">


									<div class="carousel-caption justify-content-center align-items-center">
										<div>
											<h2>Performance Optimization</h2>
											<p>We monitor and optimize your site's long-term performance</p>
											<span class="btn btn-sm btn-secondary">Learn How</span>
										</div>
									</div>
								</a>
							</div>
							<!-- /.carousel-item -->
						</div>
						<!-- /.carousel-inner -->
						<a class="carousel-control-prev" href="#carousel-2" role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-2" role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>

				</div>
			</div>
		</div>
		<!-- 첫번째 컨테이너 플루이드 끝-->

		<!-- 중단시작 -->

		<div class="container-fluid">
			<div class="container girdscc2">
				<div class="row col-sm-12">
					<article class="map_">
						<section>
							<div>
								<h6>함께하는 반려 동물이 있으신가요?</h6>
								<h4>반려동물을 등록해주세요</h4>
								<button>펫 등록</button>
							</div>
						</section>
					</article>
				</div>
			</div>



			<div class="container girdscc3">
				<div class="row">

					<div class="col-md-12">이번주 신상</div>


					<div class="col-lg-6 col-md-6 mb-4 nopaddingcard ">
						<div class="card h-40 itembox1">
							<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 mb-4 nopaddingcard">
						<div class="card h-40 itembox1">
							<a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
						</div>
					</div>


				</div>

				<div class="row">
						<section>
					

			     	<div class="roadmap-title">
						&nbsp인기제품 <a>전체보기</a>
				</div> 					
				
				<div class="swiper-container mySwiper">

			     
			      <div class="swiper-wrapper">
			
			        <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			        <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			       <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			     <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			     <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			      </div>
			      <br>
			      <div class="swiper-button-next"></div>
			      <div class="swiper-button-prev"></div>
			    </div>
					</section>


				</div>

				<div class="row">
				<!--row end-->
				<div class="roadmap-title">
						&nbsp인기제품 <a>전체보기</a>
				</div>
				
				<div class="swiper-container mySwiper">
			      <div class="swiper-wrapper">
			      
			        <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			        <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			       <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			     <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			     <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			      </div>
			      <br>
			      <div class="swiper-button-next"></div>
			      <div class="swiper-button-prev"></div>
			    </div>
				</div>
				<div class="row">
				<!--row end-->
				<div class="roadmap-title">
						&nbsp인기제품 <a>전체보기</a>
				</div>
				
				<div class="swiper-container mySwiper">
			      <div class="swiper-wrapper">
			      
			        <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
						<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			          <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			      </div>
			      <br>
			      <div class="swiper-button-next"></div>
			      <div class="swiper-button-prev"></div>
			    </div>
				</div>
				
			<div class="row">
				<div class="swiper-container mySwiper">
			      <div class="swiper-wrapper">
			          <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			           <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			         <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			       <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			          <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			          <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			          <div class="swiper-slide">
			        	<div class="ss">
						
					<img src="/petopia/images/11356_originalView_01802971.jpg" alt="테스트 이미지" class="class-image" width= />
					<div class="class-skill">
												<div class="class-type">리스트1</div>
													<div class="class-format">♡</div>
												</div>
												<div class="class-desc col-10">
													<div class="class-title">리눅스 커널 프로그래밍</div>
													<div class="class-detail">고급 개발자를 위한 리눅스 커널 분석과 개발</div>
												</div>
											
						</div>
			        </div>
			        
			      </div>
			      <br>
			   
			   
			    </div>
				</div>
				
			</div>
		</div>


		<div class="quick">
			
			<div class="icon4">
				<span>장바구니</span> <span><a href="#">0</a></span>
				<div "class=cart_item">
				
				</div>
			</div>
			<div class="icon5">
				<span>최근 본 상품</span> <br> <a href="#"><img
					src="http://vivienne.kr/web/upload/goodymall40/layout/btn_recent_prev.gif" alt=""><img
					src="http://vivienne.kr/web/upload/goodymall40/layout/btn_recent_next.gif" alt=""></a>
			</div>

		</div>
	</div>



	<div class="container-fluid footercontainer">



		<!-- footer -->

		<!--// footer -->

	</div>
	<footer>
		<div class="container-fluid">

			<img src="/petopia/images/petopia_logomini.png"> </br>
			<p>PETOPIA</p>
			</br>
			<p>서비스 이용약관 | 개인정보 처리방침 | 입점/제휴 문의</p>
			</br>
			<p>Naru Juhee Gunwoo Ahram Hansol Hana</p>
			<p>Bitcamp Jongno</p>
			</br>
			<p>&copy Creative 2021-08</p>


		</div>
	</footer>



	<a id="backtotop"></a>

	<!-- Bootstrap core JavaScript -->
  <script type="text/javascript">
		
		
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 4,
        spaceBetween: 20,
        slidesPerGroup: 4,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>	

<script src="/petopia/vendor/jquery/jquery.min.js"></script>
<script src="/petopia/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="/petopia/js/mainindex.js"></script>
<script src="/petopia/js/petopia.js"></script>
	

<script type="text/javascript">

</script>
</body>

</html>

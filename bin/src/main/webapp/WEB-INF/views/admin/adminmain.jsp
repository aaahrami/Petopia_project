<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<style>
@font-face {
  font-family: 'NEXON Lv1 Gothic OTF';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

body {
  font-family: 'NEXON Lv1 Gothic OTF';
}

#container {
    min-width: 310px;
    max-width: 800px;
    height: 400px;
    margin: 0 auto
}
#goToOrder{
font-size: 13px;
}

</style>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Petopia - Admin</title>

<!-- Custom fonts for this template-->
<link href="/petopia/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="/petopia/vendor/boorstrap/css/bootstrap.min.css"></link>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src=" https://code.highcharts.com/modules/exporting.js"></script>
	 <script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.4.1/chart.min.js"></script>


<!-- Custom styles for this template-->
<link href="/petopia/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		
		
		<!-- 좌측 네비게이션 바 -->
		<c:import url="/WEB-INF/views/include/admin_left_side_bar.jsp" />



		<!-- 상단 메뉴 바 -->
		<c:import url="/WEB-INF/views/include/admin_top_menu.jsp" />

		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">매출현황&nbsp;&&nbsp;회원수</h1>

			</div>

			<!-- Content Row -->
			<div class="row">

				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										금일 매출</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${getTodayIncome} 원</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-success shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1">
										금일 기부금</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${getTodayDonation} 원</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-hand-holding-usd fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>



				<!-- Pending Requests Card Example -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-warning shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-warning text-uppercase mb-1">
										 총 가입자 수</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${statisticsTotalMemberConut} 명</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-male fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">주문현황</h1>

			</div>
			<!--row start-->
			<div class="row">
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										최근 주문 수</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${currentOrderCount} 건</div>
								</div>
									<div class="col-auto">
									<i class="fas fa-calendar fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										교환/환불 신청</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${refundCount} 건</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-calendar fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										총 주문량 (건)</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${statisticsOrderConut}</div>
								</div>
									<div class="col-auto">
									<i class="fas fa-calendar fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			<!--row end-->



			<!-- Content Row -->

			<div class="row">

				<!-- Area Chart -->
				<div class="col-xl-8 col-lg-7">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">회원수</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
									class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">Dropdown Header:</div>
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						<div class="card-body">
							
								<div id="container"></div>
						
						</div>
					</div>
				</div>

				<!-- Pie Chart -->
				<div class="col-xl-4 col-lg-5">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between" >
							<h6 class="m-0 font-weight-bold text-primary">Mypet 비율
								</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
									class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">Dropdown Header:</div>
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						
								
							<canvas id="pieChart" height="440px"></canvas>
							
						
					</div>
				</div>


			</div>




			<!-- Content Row -->
			<div class="row">

				<!-- Content Column -->
				<div class="col-xl-12 col-lg-12">
					<div class="card shadow mb-4">
						<div class="card-header py-3 justify-content-around">
							<h6 class="m-0 font-weight-bold text-primary">미처리 주문</h6>
							
						</div>
						<div class="card-body">
						<a id="goToOrder" href="/admin/order">관리페이지로 이동</a>
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									
									<c:if test="${fn:length(getUnprocessedOrderList) == 0}">
									
									</c:if>
									<thead>
										<tr>
											<th>배송번호</th>
											<th>주문번호</th>
											<th>배송상태</th>
										</tr>
									</thead>	
								<c:if test="${fn:length(getUnprocessedOrderList) > 0}">	
										<c:forEach var='guol' items="${getUnprocessedOrderList}">
								
										<tbody>
										<tr>
											<td>${guol.delivery_idx }</td>
											<td>${guol.order_idx }</td>
											<td>${guol.delivery_state }</td>
										</tr>
										</tbody>
								</c:forEach>
								</c:if>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- End of Main Content -->

	<!-- Footer -->
	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Copyright &copy; Your Website 2021</span>
			</div>
		</div>
	</footer>
	<!-- End of Footer -->

	</div>
	<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃시 Petopia 메인으로 돌아갑니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
					<a class="btn btn-primary" href="/login/logoutProcess">로그아웃</a>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">


	
	console.log('chart.start')
Highcharts.chart('container', {

    title: {
        text: '회원수 그래프'
    },

    subtitle: {
        text: '5일전~오늘'
    },

    yAxis: {
        title: {
            text: '회원수'
        }
    },
    xAxis: {
 	categories:
 		[['${mainStatistics_join_day.get(0).toString()}'],
 	   ['${mainStatistics_join_day.get(1).toString()}'],
	   ['${mainStatistics_join_day.get(2).toString()}'],
	   ['${mainStatistics_join_day.get(3).toString()}'],
	   ['${mainStatistics_join_day.get(4).toString()}']
	   ]
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },
  

    series: [{
        name: '회원수',
        data: [[${getStatisticsMemberCount.get(0).getStatistics_join_count()}],
        	   [${getStatisticsMemberCount.get(1).getStatistics_join_count()}],
        	   [${getStatisticsMemberCount.get(2).getStatistics_join_count()}],
        	   [${getStatisticsMemberCount.get(3).getStatistics_join_count()}],
        	   [${getStatisticsMemberCount.get(4).getStatistics_join_count()}]
        	   ]
        
       
    		
    }]
});

	var context2 = document.getElementById('pieChart').getContext('2d');
	var userChart = new Chart(context2, {
		type : 'doughnut',
		data : {
		labels : ["강아지" , "고양이"],
		datasets : [ {
		backgroundColor : ["#2AC1BC", "#FDD272"],
		hoverBackgroundColor :["#2AC1BC", "#FDD272"],
		data : [10, 23]
		} ]
		},
			options : {
				responsive : false
			}
	});
	
	


</script>


	<!-- Bootstrap core JavaScript-->
	<script src="/petopia/vendor/jquery/jquery.min.js"></script>
	<script src="/petopia/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/petopia/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/petopia/js/sb-admin-2.min.js"></script>



</body>

</html>

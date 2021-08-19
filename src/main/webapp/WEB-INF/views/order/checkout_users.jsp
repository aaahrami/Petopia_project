<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>

<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=decice-width" initial-scale="1">

<!-- CSS here -->
<link rel="stylesheet" href="/petopia/css/orderstyle.css">
<link rel="stylesheet" href="/petopia/css/orderbootstrap.min.css">

<!-- 추후에 수정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="images/petopia_logomini.png">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!-- 아임포트 전용 결제 제이쿼리 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- default_css -->
	<%@include file="../include/default_css.jsp"%>
</head>

<body>
	<header>
		<%@include file="../include/default_header.jsp"%>
	</header>

	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap text-left">
								<br> <br>
								<div class="order">
									<p>OrderForm</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- OrderForm Start -->
		<div class="container">
			<div class="orderform">
				
				<br> <br>
				<div class="thanks2">
					<p>[주문 / 결제]</p>
				</div>
				<div class="spacing"></div>
				<div class="wrapper">
					<div class="sectionInner container">
						<div class="content">
							<div class="infoInsert"><p>주문 정보 입력</p></div>	
							<form id="orderInsert" method="post">
								<table>
									<tbody class="personalInfo">
										<tr>
											<th class="tableNumber">* 주문자 명</th>
											<td class="tableTitle">
											<label for="checkName"><input type="text" id="checkName1" class="inputName1" name="order_name" /></label> 
											<span class="text" id="name_check1">주문자 이름을 입력해주세요.</span></td>
										</tr>
										
										<tr>
											<th class="tableNumber">* 수령자 명</th>
											<td class="tableTitle">
											<label for="checkName"><input type="text" id="checkName2" class="inputName2" name="order_receiver_name" /></label>
											<span class="text" id="name_check2">수령자 이름을 입력해주세요.</span></td>
										</tr>
										
										<tr>
											<th class="tableNumber">* 수령자 연락처</th>
											<td class="tableTitle">
											<label for="checkTel"><input type="text" id="checkTel" class="inputTel" name="order_receiver_phonenumber" /></label> 
											<span class="text" id="phone_check">연락처를 입력해주세요. (예시: 010-1111-1111)</span></td>
											
										</tr>
										
										<tr>
											<th class="tableNumber">* 우편번호</th>
											<td class="tableTitle">
											<label for="PostalCode">
											<input type="text" id="postcode" placeholder="우편번호" class="inputBox2" name="address1" readonly> 
											<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" readonly></label><br></td>
										</tr>
										
										<tr class="address">
											<th class="tableNumber">* 주소</th>
											<td class="tableTitle">
											<label for="address1"> 
											<input type="text" id="roadAddress" placeholder="도로명 주소" class="inputBox" name="address2" readonly><br>
											<input type="text" id="detailAddress" placeholder="상세주소" class="inputPost" name="address3"></label>
											<span class="text" id="address_check"></span>
											</td>
											
										</tr>
										
										<tr class = "paymentMethod">
										<th class = "tableNumber2">* 결제수단</th>
										<td class = "tableTitle">
										<label for="checkMethod"> <input type="radio" class="selectMethod" id="select1" name="selectPayment" value = "1"  />&nbsp;무통장입금&nbsp;&nbsp;&nbsp;</label> 
										<label for="checkMethod"> <input type="radio" class="selectMethod" id="select2" name="selectPayment" value = "2" />&nbsp;카드결제</label> 
										<span class="text" id="method_check">결제수단을 선택해주세요.</span>
										
										</td>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>

				<div class="spacing2">
					<hr>
				</div>

				<!-- 결제 전 장바구니 표 시작 -->
				<div class="orderform">
					<br>

					<div class="thanks2">
						<p>[주문하실 상품]</p>
					</div>
					<div class="spacing"></div>
					<div class="order2"></div>
					<!-- 주문 내역 표 끝 -->
					
					<br>

					<div class="table-responsive">
						<table class="orderProduct" id="ProductLog" cellspacing="0">
							<thead>
								<tr>
									<th>상품번호</th>
									<th>상품명</th>
									<th>옵션</th>
									<th>수량</th>
									<th>금액</th>
								</tr>
							</thead>

							<c:forEach var='c' items="${cartInfo}">
								<tbody>
									<tr>
										<td id = "product_idx">${c.product_idx}</td>
										<td>${c.productList[0].product_name}</td>
										<td>${c.productList[0].product_coloroption}</td>
										<td id ="quantity">${c.amount}</td>
										<td>${c.productList[0].product_price}</td>
									</tr>

								</tbody>
							</c:forEach>
						</table>

						<c:forEach var='o' items="${order}">
							<div class="payment">
								<br /> <strong>배송비 : 무료</strong><br /> <strong> 총
									결제금액: </strong><strong>${totalPrice}</strong><br />
							</div>
						</c:forEach>
						</div>
						<div class = "paymentBtn">
						<button id ="paymentBtn" type = "submit">결제하기</button>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<footer>
		<%@include file="../include/default_footer.jsp"%>
	</footer>

	<!--  주소 api js-->
		<%@include file="../include/default_mapApi_js.jsp"%>

	<!-- 주문서 작성 ajax, iamport(kakaopay) -->
	<script type="text/javascript">
	/*
	 * 유효성 검사
	 */
	 
	//모든 공백 체크 정규식 
	var empJ = /\s/g; 
	// 이름 정규식 
	var nameJ = /^[가-힣]{2,6}$/; 
	// 휴대폰 번호 정규식 
	var phoneJ = /^010-?([0-9]{4})-?([0-9]{4})$/; 

	$(document).ready(function() {
		
		// ----- 주문자 이름 확인 -----
		$(".inputName1").blur(function() {
			if($('.inputName1').val()==''){ 
				$('#name_check1').css('color', 'red'); 
			} else if(nameJ.test($('.inputName1').val())!=true){ 
				$('#name_check1').text('한글 2~6자만 입력 가능합니다.'); 
				$('#name_check1').css('color', 'red'); 
			} else if(nameJ.test($('.inputName1').val())){ 
				$('#name_check1').text(' '); 
				$('#name_check1').css('color', '#2AC1BC'); 
			}
		});//blur
		
		// ----- 수령자 이름 확인 -----
		$(".inputName2").blur(function() {
			if($('.inputName2').val()==''){ 
				$('#name_check2').text('수령자 이름을 입력해주세요.'); 
				$('#name_check2').css('color', 'red'); 
			} else if(nameJ.test($('.inputName2').val())!=true){ 
				$('#name_check2').text('한글 2~6자만 입력 가능합니다.'); 
				$('#name_check2').css('color', 'red'); 
			} else if(nameJ.test($('.inputName2').val())){ 
				$('#name_check2').text(' '); 
				$('#name_check2').css('color', '#2AC1BC'); 
			}
		});//blur
		
		// ----- 전화번호 확인 -----
		$(".inputTel").blur(function() {
			if($('.inputTel').val()==''){ 
				$('#phone_check').text('연락처를 입력해주세요.'); 
				$('#phone_check').css('color', 'red'); 
			} else if(phoneJ.test($('.inputTel').val())!=true){ 
				$('#phone_check').text('010-_ _ _ _-_ _ _ _ 형식에 맞춰 입력해주세요.'); 
				$('#phone_check').css('color', 'red'); 
			} else if(phoneJ.test($('.inputTel').val())){ 
				$('#phone_check').text(' '); 
				$('#phone_check').css('color', '#2AC1BC'); 
			}
		});//blur
		
		// ----- 주소 확인 -----
		$(".inputPost").blur(function() {
			if($('.inputPost').val()==''){ 
				$('#address_check').text('상세주소를 입력해주세요.'); 
				$('#address_check').css('color', 'red'); 
			} else { 
				$('#address_check').text(' '); 
				$('#address_check').css('color', '#2AC1BC'); 
			}
		});//blur
		
		// ----- 결제수단 확인 -----
		$(".selectMethod").blur(function() {
			if($('[name=selectPayment]:checked').val() == ''){ 
				$('#method_check').text('결제수단을 선택해주세요.'); 
				$('#method_check').css('color', 'red'); 
			} else { 
				$('#method_check').text(' '); 
				$('#method_check').css('color', '#2AC1BC'); 
			}
		});//blur
		
		/*
		 * 버튼 눌렀을 때 정규식 & 모두 true일 때 Ajax로 데이터 전송
		 */
		$('#paymentBtn').click(function(){
			var inval_Arr = new Array(5).fill(false);
			
			// ----- 주문자명 확인 -----
			if (nameJ.test($('.inputName1').val())) { 
				inval_Arr[0] = true; 
			} else { 
				inval_Arr[0] = false; 
				alert('주문자명을 확인하세요.'); 
				return false; 
			} 
			
			// ----- 수령자명 확인 -----
			if (nameJ.test($('.inputName2').val())) { 
				inval_Arr[1] = true; 
			} else { 
				inval_Arr[1] = false; 
				alert('수령자명을 확인하세요.'); 
				return false; 
			} 
			
			// ----- 휴대폰번호 확인 -----
			if (phoneJ.test($('.inputTel').val())) { 
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
				alert('전화번호를 확인하세요.');
				return false;
			}
			
			// ----- 주소 확인 -----
			if ($('.inputPost').val()!='') { 
				inval_Arr[3] = true; 
			} else { 
				inval_Arr[3] = false; 
				alert('주소를 확인하세요.'); 
				return false; 
			}
		
			//  ----- 결제 수단 확인 -----
			if ($('[name=selectPayment]:checked').val() == 1 || $('[name=selectPayment]:checked').val() == 2 ) {
				inval_Arr[4] = true;
			} else {	
				inval_Arr[4] - false;
				alert('결제수단을 선택하세요.');
     			return false;
			}
			
			// inval_Arr 결과 출력
			console.log(inval_Arr);
			
			// inval_Arr가 모두 true인지 검사
			var validAll = true; 
			
			for(var i = 0; i < inval_Arr.length; i++){ 
				if(inval_Arr[i] == false){ 
					validAll = false; 
				}
			} 
			
			/*
			 * inval_Arr가 모두 true일 경우 ajax로 데이터 전송
			 */	
			 if(validAll == true){
	    	  
	    	  var payment_method = $(':input:radio[name="selectPayment"]:checked').val();
	    	  
	    	  var quantity = Number($('#quantity').text());
	    	  
	    	  console.log('click')
			  console.log($("#checkName1").val());	
		      console.log($("#checkName2").val());
		      console.log($("#checkTel").val());
		      console.log($("#postcode").val() + " " + $("#roadAddress").val() + " " + $("#detailAddress").val());
	    	  console.log(payment_method);
	    	  
	    	  if(payment_method == 1){
	    		  // 무통장입금
	    		  $.ajax({
	  	            type: "POST",
	  	            url: "/users/order-proc",
	  	            data: { "order_name": $('#checkName1').val(),
	  	                  "order_receiver_name": $("#checkName2").val(),
	  	                  "order_receiver_phonenumber": $('#checkTel').val(),
	  	                  "order_receiver_address": $('#postcode').val() + " " + $('#roadAddress').val() + " " + $('#detailAddress').val(),
	  	                  "payment_method": $('#select1').val(),
	  	                  "order_quantity": quantity,
	  	                  "product_idx" : $('#product_idx').text()
	  	            },
	  	                  
	  	            success: function(result){
	  	               alert('주문이 완료되었습니다.');
	  	               console.log(result)
	  	               location.href = "/users/confirmation_deposit";
	  	               
	  	            }, error: function(result){
	  	               alert('주문이 실패했습니다.');
	  	               console.log(result)
	  	            }
	  	         });
	    		  
	    	  }else{
	    		  // kakaopay 결제
		    	  		IMP.init('imp61748969'); //가맹점 식별코드
		    	  		IMP.request_pay({
		    	  		    pg : 'kakaopay',
		    	  		    pay_method : 'card',
		    	  		    merchant_uid : 'merchant_' + new Date().getTime(),
		    	  		    name : 'PETSHOP 반려동물 용품 결제' , //결제창에서 보여질 이름
		    	  		    amount : 100, //실제 결제되는 가격
		    	  		    buyer_name : $('#checkName1').val(),
		    	  		    buyer_tel : $('#checkTel').val(),
		    	  		    buyer_addr : $('#postcode').val() + " " + $('#roadAddress').val() + " " + $('#detailAddress').val(),
		    	  		}, function(rsp) {
		    	            if ( rsp.success ) {
		    	                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		    	                jQuery.ajax({
		    	                    url: "/users/order-proc", //cross-domain error가 발생하지 않도록 주의해주세요
		    	                    type: 'POST',
		    	                    dataType: 'json',
		    	                    data: { "order_name": $('#checkName1').val(),
		    		  	                  "order_receiver_name": $("#checkName2").val(),
		    		  	                  "order_receiver_phonenumber": $('#checkTel').val(),
		    		  	                  "order_receiver_address": $('#postcode').val() + " " + $('#roadAddress').val() + " " + $('#detailAddress').val(),
		    		  	                  "payment_method": $('#select1').val(),
		    		  	                  "order_quantity": quantity,
		    		  	                  "product_idx" : $('#product_idx').text()
		    		  	            },
		    	                }).done(function(data) {
		    	                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		    	                    if ( everythings_fine ) {
		    	                        msg = '결제가 완료되었습니다.';
		    	                        msg += '\n고유ID : ' + rsp.imp_uid;
		    	                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		    	                        msg += '\결제 금액 : ' + rsp.paid_amount;
		    	                        msg += '카드 승인번호 : ' + rsp.apply_num;
		    	                        
		    	                        alert(msg);
		    	                    } else {
		    	                        //[3] 아직 제대로 결제가 되지 않았습니다.
		    	                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		    	                    }
		    	                });
		    	                //성공시 이동할 페이지
		    	                location.href = "/users/confirmation_card";
		    	            } else {
		    	                msg = '결제에 실패하였습니다.';
		    	                msg += '에러내용 : ' + rsp.error_msg;
		    	                //실패시 alert 문 실행
		    	                alert(msg);
		    	            }
		    	        });
	    	  		}
			 	}
	    	  
	      		});
	   		});
	
	
	
	
	</script>

</body>
</html>
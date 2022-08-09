<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>상품 예약</title>
    <!-- Bootstrap core CSS -->
	<link href="../../resource/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="../../resource/css/form-validation.css" rel="stylesheet">
</head>
<body>
	<!--헤더  -->
	<%@ include file="/views/common/header.jsp" %>
	<!--전체 컨테이너  -->
	<div class="container alert-secondary" >
		<main>
		    <div class="py-5 text-center ">
		      <h1>결제하기</h1>
		      <p class="lead"></p>
		    </div>
		
		<form class="needs-validation" novalidate>
		    <div class="row g-5">
		      <div class="col-md-5 col-lg-4 order-md-last">
		        <h4 class="d-flex justify-content-between align-items-center mb-3">
		          <span class="text-danger" >예약상품</span>
		          <span class="badge bg-danger rounded-pill">3</span>
		        </h4>
		        <ul class="list-group mb-3">
		          <li class="list-group-item d-flex justify-content-between lh-sm">
		            <div>
		              <h6 class="my-0">첫번째 상품</h6>
		              <small class="text-muted">Brief description</small>
		            </div>
		            <span class="text-muted">120,000</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between lh-sm">
		            <div>
		              <h6 class="my-0">두번째 상품</h6>
		              <small class="text-muted">Brief description</small>
		            </div>
		            <span class="text-muted">180,000</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between lh-sm">
		            <div>
		              <h6 class="my-0">세번째 상품</h6>
		              <small class="text-muted">Brief description</small>
		            </div>
		            <span class="text-muted">200,000</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between bg-light">
		            <div class="text-success">
		              <h6 class="my-0">쿠폰 이름</h6>
		              <small>비 성수기 시즌</small>
		            </div>
		            <span class="text-success">−20,000</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between">
		            <span>총 결제금액</span>
		            <strong>580,000</strong>
		          </li>
		        </ul>
		        
		        <form class="card p-2">
		          <div class="input-group">
		            <input type="text" class="form-control" placeholder="프로모션 코드">
		            <button type="submit" class="btn btn-secondary">제출</button>
		          </div>
		        </form>
		      
		       <hr class="my-4">
		      
		          <div class="my-3 alert-light">
		      		<h4 class="mb-3" >결제방법</h4>
		            <div class="form-check">
		              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
		              <label class="form-check-label" for="credit">카드결제</label>
		            </div>
		            <div class="form-check">
		              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
		              <label class="form-check-label" for="debit">계좌이체</label>
		            </div>  
		          </div>
					<hr>
		          <div class="row gy-3 ">
		            <div class="col-md-6">
		              <label for="cc-name" class="form-label">Name on card</label>
		              <input type="text" class="form-control" id="cc-name" placeholder="" required>
		              <small class="text-muted">Full name as displayed on card</small>
		              <div class="invalid-feedback">
		                Name on card is required
		              </div>
		            </div>
		
		            <div class="col-md-6">
		              <label for="cc-number" class="form-label">Credit card number</label>
		              <input type="text" class="form-control" id="cc-number" placeholder="" required>
		              <div class="invalid-feedback">
		                Credit card number is required
		              </div>
		            </div>
		
		            <div class="col-md-3">
		              <label for="cc-expiration" class="form-label">Expiration</label>
		              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
		              <div class="invalid-feedback">
		                Expiration date required
		              </div>
		            </div>
		
		            <div class="col-md-3">
		              <label for="cc-cvv" class="form-label">CVV</label>
		              <input type="text" class="form-control" id="cc-cvv" placeholder="" required >
		              <div class="invalid-feedback">
		                Security code required
		              </div>
		            </div>
		          </div>  
		      </div>
		      <!--사용자 정보  -->
		      <div class="col-md-7 col-lg-8" >
		          <div class="row g-3 alert-light">
		        	<h4 class="mb-3 " >사용자 정보</h4>
		            <div class="col-12">
		              <label for="username" class="form-label">이름</label>
		              <div class="input-group has-validation">
		                <span class="input-group-text">*</span>
		                <input type="text" class="form-control" id="username" placeholder="Username" required>
		              <div class="invalid-feedback">
		                  이름 작성 필수.
		                </div>
		              </div>
		            </div>
		
		            <div class="col-12">
		              <label for="email" class="form-label">이메일<span class="text-muted">(선택사항)</span></label>
		              <input type="email" class="form-control" id="email" placeholder="you@naver.com">
		              <div class="invalid-feedback">
		                Please enter a valid email address for shipping updates.
		              </div>
		            </div>
		
		            <div class="col-12">
		              <label for="address" class="form-label">연락처</label>
		              <input type="text" class="form-control" id="address" placeholder="-부호 제외" required>
		              <div class="invalid-feedback">
		                Please enter your shipping address.
		              </div>
		            </div>
		
		            <div class="col-12">
		              <label for="address2" class="form-label">요청사항<span class="text-muted">(선택사항)</span></label>
		              <input type="text" class="form-control" id="address2" placeholder="">
		            </div>
					<br><br><br><br><br>
		          </div>
		
		          <hr class="my-4">
				  
		          <div class="form-check alert-light">
		          <h2 class="py-5">취소/환불 규정에 대한 동의</h2>
		          		<table class="table table-striped" >
							<tr>
								<th>이용 4일 전까지</th> 
								<th>취소 수수료 없음</th> 
							</tr>
							<tr>
								<td>이용 3일 전</td>
								<td>총결제금액의 10% 차감</td>
							</tr>
							<tr>
								<td>이용 2일 전</td>
								<td>총결제금액의 20% 차감</td>
							</tr>
							<tr>
								<td>이용 1일 전</td>
								<td>총결제금액의 50% 차감</td>
							</tr>
							<tr>
								<td>이용 당일</td>
								<td>환불 불가능</td>
							</tr>
						</table>
		            
		            
		            <input type="checkbox" class="form-check-input" id="agree-notice">
		            <label class="form-check-label" for="agree-notice">동의합니다</label>
		            <div class="invalid-feedback">
		                Expiration date required
		              </div>
		          </div>
		
		          <hr class="my-4">
		
		          <button class="w-100 btn btn-primary btn-lg btn btn-danger" type="submit" >결제하기</button>
		        </form>
		      </div>
		    </div>
	  </main>

	  <footer class="my-5 pt-5 text-muted text-center text-small">
	    <p class="mb-1">&copy; 2017–2021 Company Name</p>
	    <ul class="list-inline">
	      <li class="list-inline-item"><a href="#">Privacy</a></li>
	      <li class="list-inline-item"><a href="#">Terms</a></li>
	      <li class="list-inline-item"><a href="#">Support</a></li>
	    </ul>
	  </footer>
	</div>


	<script src="../../resource/js/bootstrap.bundle.min.js"></script>
	<script src="../../resource/js/form-validation.js"></script>
	
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>
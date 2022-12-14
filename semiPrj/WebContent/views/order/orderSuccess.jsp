<%@page import="com.kh.order.vo.ReservationVo"%>
<%@page import="com.kh.order.vo.OrderVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    	OrderVo orderVo = (OrderVo)request.getAttribute("orderVo"); 
   		ReservationVo reservationVo = (ReservationVo)request.getAttribute("reservationVo");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 성공</title>
</style>
<style>
	.outer {
		width: 80%;
	    min-width: 600px;
	    margin: auto;
	    margin-top: 100px;
	    border: 1px solid #FFA000;
	    border-radius: 0.5rem;
	    padding: 20px;
	}
</style>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
<div class="outer">
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-warning"> <%=reservationVo.getCampName()%>을 예약해 주셔서 감사합니다.</h2>
	</div>
	<div class="container" >
		<p>예약자 명 : <%=reservationVo.getReservationName() %>  </p>
		<p>결제금액 :  <%=orderVo.getPayAmount() %></p>
		<p>예약날짜 :  <%=reservationVo.getReservationCheckin() %> ~ <%=reservationVo.getReservationCheckout() %></p>
		<p>숙박인원 :  <%=reservationVo.getReservationNop() %></p>
		<p>요청사항 :  <%=reservationVo.getRequest() %></p>
	</div>
	<div class="container">
			<p><a href="<%=contextPath%>" class="btn btn-warning ">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-backspace-fill" viewBox="0 0 16 16">
	  		<path d="M15.683 3a2 2 0 0 0-2-2h-7.08a2 2 0 0 0-1.519.698L.241 7.35a1 1 0 0 0 0 1.302l4.843 5.65A2 2 0 0 0 6.603 15h7.08a2 2 0 0 0 2-2V3zM5.829 5.854a.5.5 0 1 1 .707-.708l2.147 2.147 2.146-2.147a.5.5 0 1 1 .707.708L9.39 8l2.146 2.146a.5.5 0 0 1-.707.708L8.683 8.707l-2.147 2.147a.5.5 0 0 1-.707-.708L7.976 8 5.829 5.854z"/>
			</svg> 메인페이지</a></p>
	</div>
</div>
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>
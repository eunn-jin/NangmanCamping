<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = (String)request.getParameter("no");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/SjyCss.css">
<style>
	td>a{
	display: block;
}
</style>
</head>
<body>
	<%@ include file="/views/buisness/bsHeader.jsp" %>
    <div id="side" class="container">
        <div id="sidebar" class="col">

            <div style="margin-left: 10%; font-size: 20px; color: white;">문의 사항</div>
            <ul class="menu">
                <li>
                    <a href="#">문의 내역</a>
                    <ul class="submenu">
                        <li><a href="<%=contextPath%>/views/buisness/campQuestion.jsp">조회</a></li>
                        
                    </ul>
                </li>

            </ul>

        </div>

    </div>
		<main class="navbar navbar-expand-sm ">
			
			<div id="content" >
				<h2>문의 상세 조회</h2>
				<hr>
				<label for="">작성자: </label>
                <div>작성자이름</div>
                <br><br>
                <label for="">내용:  </label>
                <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequatur mollitia ducimus dolore in minus, consectetur sed? Vero aperiam vitae, itaque repellendus laboriosam hic quasi odio eius dolore ipsa beatae dignissimos?</div>


                <hr>
                댓글
			</div>
			

		</main>
	
		<%@ include file="/views/common/footer.jsp" %>
</body>
</html>
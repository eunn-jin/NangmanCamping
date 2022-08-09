<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	td>a{
	display: block;
}
</style>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/SjyCss.css">
</head>
<body>
	<%@ include file="/views/buisness/bsHeader.jsp" %>
    <div id="side" class="container">
        <div id="sidebar" class="col">

            <div style="margin-left: 10%; font-size: 20px; color: white;">고객센터</div>
            <ul class="menu">
                <li>
                    <a href="#">문의</a>
                    <ul class="submenu">
                        
                        <li style="font-size: 14px;"><a href="<%=contextPath%>/views/buisness/campSvcCenter.jsp">문의 내역조회</a></li>
                    </ul>
                </li>

            </ul>

        </div>

    </div>
		<main class="navbar navbar-expand-sm ">
			
			<div id="content" >
				

					<h2>나의 문의 사항</h2>
					<span style="color:gray">&nbsp;&Tab;-&nbsp;홈페이지 및 캠핑장 요청사항</span>
						<hr>
                        
						<table class="table">
							<thead class="table-light">
								<tr>
									<th scope="col">#</th>
									<th scope="col">문의자</th>
									<th scope="col">제목</th>
									<th scope="col">문의내용</th>
								</tr>
							</thead>
							<tbody>
								<!-- 예약상세보기 페이지를 요청하는 서블릿으로 이동 -->
								<tr onclick="location.href='campServicejDetail.jsp?&<%="no=1" %>'" style="cursor:hand">
									<input type="hidden" value="예약자의 회원번호">
									<th scope="row">1</th>
									
									<td>Mark</td>
									<td>캠핑...</td>
									<td>캠핑장 조회 할때...</td>
								</tr>

							</tbody>
						</table>


						<div id="end">
							<button  onclick="location.href='campSvcInsert.jsp'" id="send" class="rounded">등록</button>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled">
									<a class="page-link"><</a>
								</li>
								<li class="page-item active" aria-current="page">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#">></a>
								</li>
							</ul>
						</nav>
						
						
					</div>
					
					
				</main>
	
		<%@ include file="/views/common/footer.jsp" %>
</body>
</html>
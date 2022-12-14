<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>낭만캠핑</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/memberCommon.css" type="text/css">
<style>
    .joinBox {
        width: 700px;
        margin: auto;
        margin-top: 100px;
        padding: 50px;
        display: flex;
        justify-content: space-evenly; 
    }

    .introBox {
        width: 700px;
        margin: auto;
        text-align: center;
        vertical-align: middle;
    }

    .big-btn {
        width: 200px;
        height: 200px;
    }

</style>
</head>
<body>

    <%@ include file="/views/common/header.jsp" %>

    <div class="container">
        <div class="joinBox">
            <button type="button" class="big-btn reversed-btn" data-bs-toggle="modal" data-bs-target="#PersonJoin">일반 회원 가입</button>
            <button type="button" class="big-btn reversed-btn" data-bs-toggle="modal" data-bs-target="#BusinessJoin">사업자 회원 가입</button>
        </div>

        <div class="introBox">
            <p> 캠핑장 예약 및 물품 대여를 이용하실 고객은 일반 회원 가입을 선택하시면 됩니다.</p>
            <p> 캠핑장을 등록하실 고객은 사업자 회원 가입을 선택하시면 됩니다.</p>

        </div>
    </div>

    <div class="modal fade" id="PersonJoin" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">일반 회원 가입</h4>
                </div>
            
                <div class="modal-body">
                    <form action="<%=contextPath%>/user/join" method="post">
                        <div class="mb-4 mt-4">
                          <label for="id" class="form-label">* 아이디:</label>
                          <input type="text" class="form-control" id="id" placeholder="3글자 이상 입력하세요" name="id" required>
                        </div>
                        <div class="mb-3">
                          <label for="pwd" class="form-label">* 비밀번호:</label>
                          <input type="password" class="form-control" id="pwd" placeholder="4글자 이상 입력하세요" name="pwd" required>
                        </div>
                        <div class="mb-3">
                            <label for="pwdCheck" class="form-label">* 비밀번호 확인:</label>
                            <input type="password" class="form-control" id="pwdCheck" placeholder="비밀번호 재확인" name="pwdCheck" required>
                          </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">* 이름:</label>
                            <input type="text" class="form-control" id="name" placeholder="1글자 이상 입력하세요" name="name" required>
                          </div>
                          <div class="mb-3">
                            <label for="phone" class="form-label">* 휴대폰번호:</label>
                            <input type="text" class="form-control" id="phone" placeholder="ex) 01012345678" name="phone" required>
                          </div>
                          <div class="mb-3">
                            <label for="email" class="form-label">이메일:</label>
                            <input type="email" class="form-control" id="email" placeholder="ex) example@ex.com" name="email">
                          </div>
                          <div class="mb-3">
                            <label for="birth" class="form-label">생년월일:</label>
                            <input type="date" class="form-control" id="birth" name="birth">
                          </div>
                          <div class="mb-3">
                            성별: 
                            <label><input type="radio" name="gender" value="M" checked> 남자</label>
                            <label><input type="radio" name="gender" value="F"> 여자</label>
                          </div>

                        <div class="location-right">
                            <button type="submit" class="btn btn-success" onclick="return checkPwd();">회원가입</button>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="BusinessJoin" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">사업자 회원 가입</h4>
                </div>
            
                <div class="modal-body">
                    <form action="<%=contextPath%>/business/join" method="post">
                        <div class="mb-4 mt-4">
                          <label for="id" class="form-label">* 아이디:</label>
                          <input type="text" class="form-control" id="id" placeholder="3글자 이상 입력하세요" name="id" required>
                        </div>
                        <div class="mb-3">
                          <label for="pwd" class="form-label">* 비밀번호:</label>
                          <input type="password" class="form-control" id="pwd" placeholder="4글자 이상 입력하세요" name="pwd" required>
                        </div>
                        <div class="mb-3">
                            <label for="pwdCheck" class="form-label">* 비밀번호 확인:</label>
                            <input type="password" class="form-control" id="pwdCheck" placeholder="비밀번호 재확인" name="pwdCheck" required>
                          </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">* 이름:</label>
                            <input type="text" class="form-control" id="name" placeholder="1글자 이상 입력하세요" name="name" required>
                          </div>
                          <div class="mb-3">
                            <label for="phone" class="form-label">* 휴대폰번호:</label>
                            <input type="text" class="form-control" id="phone" placeholder="ex) 01000000000" name="phone" required>
                          </div>
                          <div class="mb-3">
                            <label for="email" class="form-label">* 이메일:</label>
                            <input type="email" class="form-control" id="email" placeholder="example@ex.com" name="email">
                          </div>

                        <div class="location-right">
                            <button type="submit" class="btn btn-success" onclick="return checkPwd();">회원가입</button>
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="/views/common/footer.jsp" %>

	<script>
		
		$(function(){
			<%if(errorMsg != null){%>
				alert("<%=errorMsg%>");
			<%}%>
		});
		
		function checkPwd(){
			isSame = $('input[name=pwd]').val() == $('input[name=pwdCheck]').val();
			if(isSame) {
				return true;
			} else {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			
		}
		
	</script>
</body>
</html>
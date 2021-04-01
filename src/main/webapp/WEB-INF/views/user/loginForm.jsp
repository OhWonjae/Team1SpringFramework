<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<link rel="stylesheet"
	href="<%=pageContext.getServletContext().getContextPath()%>/resources/css/hungyun.css">
<style>
.error {
	font-size: 0.7em;
}
</style>
<script>
	function validate() {
		event.preventDefault(); // 기능 잠시 꺼두기
		var result = true;

		// 유효성 검사 시작
		// result = false; 어디선가 false가 되면 실행이 안됨. 여전히 트루값을 가지면 실행
		const uid = $("#user_id").val();
		const upassword = $("#user_password").val();

		if (user_password === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUserpassword").html("필수사항 입니다.");
		}

		if (uid === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUserid").html("필수사항 입니다.");
		}

		if (result) {
			$("#loginForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
			//document.joinForm.submit(); // 찾는 방법이 2개가 있음. 아이디를 이용
		} else {
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		}
		if (!re.test(uid)) {
			result = false;
			alert("이메일에 맞는 형식이 아닙니다.");
		}
	}
</script>

<div class="header2">
	<div class="inner" style="font-size: 0.80em; padding-top: 5px;">
		홈 > 로그인</div>
</div>

<div class="card" style="border: white;">
	<article class="card-body align-self-center" style="width: 500px;">
		<h4 class="card-title mt-3 text-center">
			<strong>로그인</strong>
		</h4>
		<br>

		<c:if test="${loginError != null }">

			<div class="alert alert-primary">
				<c:if test="${loginError == 'wrongUser_id'}">
					<span>아이디가 존재하지 않습니다.</span>
				</c:if>
				<c:if test="${loginError == 'wrongUser_password'}">
					<span>비밀번호가 틀립니다.</span>
				</c:if>
			</div>
		</c:if>
		<form id="loginForm" name="loginForm" method="post" action="login"
			onsubmit="validate()" novalidate="novalidate">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<div class="form-group input-group">
				<input id="user_id" name="user_id" class="form-control"
					placeholder="이메일을 입력하세요." type="email"><span
					id="errorUser_id" class="text-danger error"></span>
			</div>

			<div class="form-group input-group">
				<input id="user_password" name="user_password" class="form-control"
					placeholder="비밀번호을 입력하세요." type="password"><span
					id="errorUser_password" class="text-danger error"></span>
			</div>


			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block"
					style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
					로그인</button>
			</div>
		</form>
		
			
				<button type="button"
					onclick="location.href='<%=application.getContextPath()%>/joinForm'"
					class="btn btn-primary btn-block"
					style="background-color: white; color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
					회원가입</button>
			


			<div class="text-center"
				style="text-align: center; font-size: 0.7em;">
				<button type="button" class="button"
					onclick="location.href='<%=application.getContextPath()%>/searchId' ">
					아이디 찾기 |</button>
				<button type="button" class="button"
					onclick="location.href='<%=application.getContextPath()%>/searchPw' ">
					비밀번호 찾기</button>
			</div>

		
	</article>
</div>




<%@ include file="/WEB-INF/views/common/footer.jsp"%>
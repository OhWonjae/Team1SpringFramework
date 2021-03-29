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
		const uemail = $("#uemail").val();
		const upassword = $("#upassword").val();

		if (upassword === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUpassword").html("필수사항 입니다.");
		}

		if (uemail === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUemail").html("필수사항 입니다.");
		}

		if (result) {
			$("#joinForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
			//document.joinForm.submit(); // 찾는 방법이 2개가 있음. 아이디를 이용
		} else {
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		}
		if (!re.test($email)) {
			result = false;
			$("#errorUemail").html("이메일 형식이 아닙니다.")
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
		<form id="joinForm" name="joinForm" method="post" action="login"
			onsubmit="validate()" novalidate="novalidate">
			<div class="form-group input-group">
				<input id="uemail" name="uemail" class="form-control"
					placeholder="이메일을 입력하세요." type="email"><span
					id="errorUemail" class="text-danger error"></span>
			</div>

			<div class="form-group input-group">
				<input id="upassword" name="upassword" class="form-control"
					placeholder="비밀번호을 입력하세요." type="password"><span
					id="errorUpassword" class="text-danger error"></span>
			</div>

			<br>

			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block"
					style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
					로그인</button>
			</div>
		</form>
		<form method="post"
			action="<%=pageContext.getServletContext().getContextPath()%>/main">
			<div class="form-group">
				<button type="button"
					onclick="location.href='<%=application.getContextPath()%>/user/signUp'"
					class="btn btn-primary btn-block"
					onclick="location.href='signUp.html'"
					style="background-color: white; color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
					회원가입</button>
			</div>


			<div class="text-center"
				style="text-align: center; font-size: 0.7em;">
				<button type="button" class="button"
					onclick="location.href='<%=application.getContextPath()%>/user/searchId' ">
					아이디 찾기 |</button>
				<button type="button" class="button"
					onclick="location.href='<%=application.getContextPath()%>/user/searchPw' ">
					비밀번호 찾기</button>
			</div>

		</form>
	</article>
</div>




<%@ include file="/WEB-INF/views/common/footer.jsp"%>
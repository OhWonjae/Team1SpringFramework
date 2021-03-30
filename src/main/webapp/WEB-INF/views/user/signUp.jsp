<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>

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
		const uname = $("#uname").val();
		const upassword = $("#upassword").val();
		const uemail = $("#uemail").val();
		const uphone = $("#uphone").val();

		if (uname === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUname").html("필수사항 입니다.");
		}

		if (upassword === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUpassword").html("필수사항 입니다.");
		}

		if (uemail === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUemail").html("필수사항 입니다.");
		}

		if (uemail === "") { // 비어있으면 문제있지
			result = false;
			$("#errorUphone").html("필수사항 입니다.");
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
	<div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈
		> 회원가입</div>
</div>

<article class="card-body mx-auto" style="width: 500px;">
	<h4 class="card-title mt-3 text-center">
		<strong>회원 가입</strong>
	</h4>

	<form id="joinForm" name="joinForm" method="post" action="join"
		onsubmit="validate()" novalidate="novalidate">
		<div>
			<strong>이름</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="uname" name="uname" class="form-control"
					placeholder="이름을 입력하세요." type="text"><span id="errorUname"
					class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>이메일</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="uemail" name="uemail" class="form-control"
					placeholder="이메일을 입력하세요." type="email"><span
					id="errorUemail" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>비밀번호 확인</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="upassword" name="upassword" class="form-control"
					placeholder="비밀번호를 6자 이상 입력해 주세요." type="password"><span
					id="errorUpassword" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>비밀번호 확인</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="upassword2" name="upassword2" class="form-control"
					placeholder="비밀번호를 한번 더 입력해주세요." type="password"><span
					id="errorUpassword" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>핸드폰 번호</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="uphone" name="uphone" class="form-control"
					placeholder="핸드폰 번호를 입력해 주세요." type="text"><span
					id="errorUphone" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>크기(소형,중형,대형)</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<select class="form-control" id="dogsize" name="dogsize">
					<option selected="">강아지의 사이즈를 선택하세요.</option>
					<option>소형</option>
					<option>중형</option>
					<option>대형</option>
				</select>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-block"
			style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
			<strong>회원가입</strong>
		</button>
		<div class="text-center" style="text-align: center; font-size: 0.9em;">
			본인은 민 14세 이상이며, DOGSINSA <span style="color: #228be6;">이용약관,
				개인정보 수집 및 이용</span> 내용을 확인 하였으며, 동의합니다.
		</div>
	</form>

	<!-- <form method="post" action="join">
		<div class="form-group">
			<label for="uid">아이디</label> 
			<input type="text" class="form-control" id="uid" name="uid">
		</div>
		<div class="form-group">
			<label for="uname">이름</label> 
			<input type="text" class="form-control" id="uname" name="uname">
		</div>
		<div class="form-group">
			<label for="upassword">비밀번호</label> 
			<input type="password" class="form-control" id="upassword" name="upassword">
		</div>
		<button type="submit" class="btn btn-primary">회원가입</button>
		
		</form> -->

</article>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
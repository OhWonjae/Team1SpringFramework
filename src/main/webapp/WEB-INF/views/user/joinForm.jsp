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
		const uid = $("#user_id").val();
		const uname = $("#user_name").val();
		const upassword = $("#user_password").val();
		const upassword2 = $("#user_password2").val();
		const uphone = $("#user_phone").val();

		if (uid  === "") { // 비어있으면 문제
			result = false;
			$("#errorUserid").html("필수사항 입니다.");
		} else if (uid.length < 8) {
			result = false;
			$("#errorUserid").html("최소 8자 이상 입력해야 합니다.");
		} else if (uid.length > 50) {
			result = false;
			$("#errorUserid").html("최대 50자 까지만 입력해야 합니다.");
		}

		if (upassword !== upassword2) {
			if (upassword !== "" && upassword2 !== "")
				result = false;
			alert("비밀번호가 일치하지 않습니다.");
			$('#user_password2').val('');
			$('#user_password2').focus();
		}
		if (uname === "") { // 비어있으면 문제
			result = false;
			$("#errorUsername").html("필수사항 입니다.");
		}

		if (upassword === "") { // 비어있으면 문제
			result = false;
			$("#errorUserpassword").html("필수사항 입니다.");
		}

		if (upassword2 === "") { // 비어있으면 문제
			result = false;
			$("#errorUserpassword2").html("필수사항 입니다.");
		}

		if (uphone === "") { // 비어있으면 문제
			result = false;
			$("#errorUserphone").html("필수사항 입니다.");
		}
	
		
		if (result) {
			$("#joinForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
			//document.joinForm.submit(); // 찾는 방법이 2개가 있음. 아이디를 이용
		} else {
			var re_id = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			var re_hp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		}
		if (!re_id.test(uid)) {
			result = false;
			alert("이메일에 맞는 형식이 아닙니다.");
			$('#user_id').val('');
			$('#user_id').focus();
		}
		var idChkVal = $("#idCheck").val();
		if(idChkVal == "N"){
			alert("중복체크 버튼을 눌러주세요.");
		}else if(idChkVal == "Y"){
			$("#joinForm").submit();
		}

		else
			(!re_hp.test(uphone))
		{
			result = false;
			alert("휴대번호에 맞는 형식이 아닙니다.");
			$('#user_phone').val('');
			$('#user_phone').focus();
		}

	} 
	function fn_idCheck() {
		$.ajax({
			url : "user/idCheck",
			type : "POST",
			dataType : "json",
			data : {
				"user_id" : $("#user_id").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("중복된 아이디입니다.");
				} else if (data == 0) {
					$("#idCheck").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
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
		onsubmit="validate()">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<div>
			<strong>이름</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_name" name="user_name" class="form-control"
					placeholder="이름을 입력하세요." type="text"><span
					id="errorUsername" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>이메일</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_id" name="user_id" class="form-control"
					placeholder="이메일을 입력하세요." type="email"><span
					id="errorUserid" class="text-danger error"></span>
				<button class="btn btn-light" type="button"
					style="width: 120px; margin-left: 20px;" id="idCheck"
					onclick="fn_idCheck();" value="N">중복체크</button>
			</div>
		</div>
		<%-- <c:if test="${joinError != null }">
			<div class="alert alert-primary">
				<c:if test="${joinError == 'wrongUser_id'}">
					<span>이미 사용중인 이메일입니다.</span>
				</c:if>
			</div>
		</c:if> --%>

		<div>
			<strong>비밀번호</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_password" name="user_password" class="form-control"
					placeholder="비밀번호를 6자 이상 입력해 주세요." type="password"><span
					id="errorUserpassword" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>비밀번호 확인</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_password2" name="user_password2"
					class="form-control" placeholder="비밀번호를 한번 더 입력해주세요."
					type="password"><span id="errorUserpassword2"
					class="text-danger error"></span>
				<!-- <button type="button" class="btn btn-light" style="width:120px; margin-left: 20px;" onclick="openZipSearch()">비밀번호 확인</button> -->
			</div>
		</div>
		<div>
			<strong>휴대번호</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_phone" name="user_phone" class="form-control"
					placeholder="핸드폰 번호를 입력해 주세요." type="number"><span
					id="errorUserphone" class="text-danger error"></span>
			</div>
		</div>
		<div>
			<strong>강아지 사이즈</strong>
			<div class="form-group input-group">
				<select class="form-control" id="dog_size" name="dog_size">
					<option selected="" value="">강아지의 사이즈를 선택하세요.</option>
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
			본인은 만 14세 이상이며, DOGSINSA <span style="color: #228be6;">이용약관,
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
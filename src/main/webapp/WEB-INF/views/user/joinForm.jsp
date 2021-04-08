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

/* var user_phone1 = $("#phone1").val();
var user_phone2 = $("#phone2").val();
var user_phone3 = $("#phone3").val();
var user_phone = user_phone1 + user_phone2 + user_phone3;
document.getElementById("user_phone").value = user_phone; */
	function validate() {
		event.preventDefault(); // 기능 잠시 꺼두기
		var result = true;
		// 유효성 검사 시작
		// result = false; 어디선가 false가 되면 실행이 안됨. 여전히 트루값을 가지면 실행
		const uname = $("#user_name").val();
		const upassword = $("#user_password").val();
		const upassword2 = $("#user_password2").val();
		
		// 휴대폰 번호 3칸으로 나눠서 입력받기
 		var user_phone1 = $("#phone1").val();
		var user_phone2 = $("#phone2").val();
		var user_phone3 = $("#phone3").val();
		var user_phone = user_phone1 + user_phone2 + user_phone3;
		document.getElementById("user_phone").value = user_phone; 
		const uphone = $("#user_phone").val();
		
		// 이메일 2칸으로 나눠서 입력받기 
		var user_email1 = $("#email1").val();
		var user_email2 = $("#email2").val();
		var user_email3 = $("#textEmail").val();
		
		if(user_email2 == "directly" || user_email2 == null) {
			user_email2 == "";
			var user_id = user_email1 + "@" + user_email3; 
		} else {
			var user_id = user_email1 + "@" + user_email2;
		}
		/* var user_id = user_email1 + "@" + user_email2 + user_email3; 	 */	
		document.getElementById("user_id").value = user_id; 
		const uid = $("#user_id").val();
		var idChkVal = idCheck.getAttribute('value');
		
 		console.log(user_phone);
		console.log(user_phone1);
		console.log(user_phone2);
		console.log(user_phone3);
		console.log(user_email1);
		console.log(user_email2);
		console.log(user_email3);
		console.log(user_id); 
		if (uid  === "") { // 비어있으면 문제
			result = false;
			$("#errorUserid").html("필수사항 입니다.");
		} else if (uid.length < 8) {
			result = false;
			$("#errorUserid").html("최소 8자 이상 입력해야 합니다.");
		} else if (uid.length > 50) {
			result = false;
			$("#errorUserid").html("최대 50자 까지만 입력해야 합니다.");
		} else if (idChkVal == "N") {
			result = false;
			$("#errorUserid").html("중복체크를 받아야합니다.");
		}
		
		/* if (upassword !== upassword2) {
			if (upassword !== "" && upassword2 !== "")
			result = false;
			$("#errorUserid").html("중복체크를 받아야합니다.");
			$('#user_password2').val('');
			$('#user_password2').focus();
		} */
		if (uname === "") { // 비어있으면 문제
			result = false;
			$("#errorUsername").html("필수사항 입니다.");
		} 
		if (upassword === "") { // 비어있으면 문제
			result = false;
			$("#errorUserpassword").html("필수사항 입니다.");
		} else if (upassword.length < 6) {
			result = false;
			$("#errorUserpassword").html("최소 6자 이상 입력해야 합니다.");
		}
		if (upassword2 === "") { // 비어있으면 문제
			result = false;
			$("#errorUserpassword2").html("필수사항 입니다.");
		} else if (upassword2.length < 6) {
			result = false;
			$("#errorUserpassword2").html("최소 6자 이상 입력해야 합니다.");
			
		}
		if (user_phone2 === "" || user_phone3 === "") { // 비어있으면 문제
			result = false;
			$("#errorUserphone").html("필수사항 입니다.");
		}		
		if (result) {
			$("#joinForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
			//document.joinForm.submit(); // 찾는 방법이 2개가 있음. 아이디를 이용
		} else {
			var reg_pwd = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
			var re_id = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			var re_hp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			//var idChkVal = $("#idCheck").val();
			
		}
		if (!re_id.test(uid)) {
			result = false;
			swal("이메일에 맞는 형식이 아닙니다.");
			$('#user_id').val('');
			$('#user_id').focus();
		}  else if (!reg_pwd.test(upassword) || !reg_pwd.test(upassword2)) {
			result = false;
			swal("영문, 숫자 혼합하여 최소 6~20자리 이내의 비밀번호를 입력해야 합니다.");
			$('#user_password').val('');
			$('#user_password2').val('');
			$('#user_password').focus();
		}	else if (uname  === "") {
			result = false;
			swal("이름을 입력하지 않았습니다.");
			$('#user_name').focus();
		}  else if (upassword === "" || upassword2 === "") {
			result = false;
			swal("비밀번호를 입력하지 않았습니다.");
		}  else if (upassword !== upassword2) {
			result = false;
			swal("비밀번호가 서로 일치하지 않습니다.");
			$('#user_password').focus();
		}  else if (!re_hp.test(uphone)) {
			result = false;
			swal("휴대폰 번호에 맞는 형식이 아닙니다.");
			$('#user_phone').val('');
			$('#user_phone').focus();
		}  else if (idChkVal == "N"){
			swal("중복체크 버튼을 눌러주세요.");
		}  else if(idChkVal == "Y"){
			result = true;
			} 
/* 		console.log(idCheck.getAttribute('value'));
		console.log(idChkVal);  */
		
		
	} 
	function fn_idCheck() {
		var user_email1 = $("#email1").val();
		var user_email2 = $("#email2").val();
		var user_email3 = $("#textEmail").val();
		
		if(user_email2 == "directly" || user_email2 == null) {
			user_email2 == "";
			var user_id = user_email1 + "@" + user_email3; 
		} else {
			var user_id = user_email1 + "@" + user_email2;
		}
		document.getElementById("user_id").value = user_id; 

		$.ajax({
			
			url: "idCheck",
			method: "post",
			data: {user_id:$("#user_id").val(), ${_csrf.parameterName}:"${_csrf.token}"},
			success: function(data) {				
				console.log(data);
				// 이메일 2칸으로 나눠서 입력받기 
				
				console.log(user_email1);
				console.log(user_email2);
				console.log(user_email3);
				console.log(user_id); 
				/* var user_id = user_email1 + "@" + user_email2 + user_email3; 	 */	
				if ($("#user_id").val() == '') {
					swal("필수 입력사항입니다.");
				} else if (data == "1") {
					swal("중복된 아이디입니다.");
				} else if (data == "0") {
					$("#idCheck").attr("value", "Y");
					swal("사용가능한 아이디입니다.");
				} 
			}
		})
	}
	
	$(function() {
        $('#email2').change(function() {
            if ($('#email2').val() == 'directly') {
                $('#textEmail').attr("disabled", false);
                $('#textEmail').val("");
                $('#textEmail').focus();
            } else {
                $('#textEmail').val($('#email2').val());
            }
        })
    });

</script>



<div class="header2">
	<div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈
		> 회원가입</div>
</div>

<article class="card-body mx-auto" style="width: 600px;">
	<h4 class="card-title mt-3 text-center">
		<strong>회원 가입</strong>
	</h4>

	<form id="joinForm" name="joinForm" method="post" action="join"
		onsubmit="validate()" novalidate="novalidate">
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
				<input type="text" id="email1" name="email1" class="form-control"
					maxLength="15"/> 
					<span>@</span> 
 					<input id="textEmail" style="width: 170px;"> 
					<select type="email" id="email2"
					name="email2" class="form-control" maxLength="25">
					<option value="" disabled selected>E-Mail 선택</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>daum.net</option>
					<option>hanmail.com</option>
					<option>nate.com</option>
					<option>yahoo.co.kr</option>
					<option value="directly" id="textEmail">직접선택</option>
					</select> 
					
				<input type="hidden" id="user_id" name="user_id"
					class="form-control" placeholder="이메일을 입력하세요." type="email">
				<span id="errorUserid" class="text-danger error"></span>
				<!--아이디(이메일) 중복체크-->
				<a class="btn btn-light" type="button" id="idCheck"
					style="width: 100px; margin-left: 10px;"
					href="javascript:fn_idCheck();" value="N">중복체크</a>
			</div>
		</div>
		<%-- <c:if test="${joinError != null }">
			<div class="swal swal-primary">
				<c:if test="${joinError == 'wrongUser_id'}">
					<span>이미 사용중인 이메일입니다.</span>
				</c:if>
			</div>
		</c:if> --%>

		<div>
			<strong>비밀번호</strong><span style="color: red;">*</span>
			<div class="form-group input-group">
				<input id="user_password" name="user_password" class="form-control"
					placeholder="비밀번호를 입력하세요.(영문,숫자 포함 6~20자 이내)" type="password"><span
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
			<strong>휴대폰 번호</strong><span style="color: red;">*</span>
			<div class="form-group input-group">

				<select class="form-control" type="tel" id="phone1" name="phone1"
					maxLength="3">
					<option selected="" value="010">010</option>
					<option>011</option>
					<option>016</option>
					<option>017</option>
					<option>019</option>
				</select> - <input type="tel" id="phone2" name="phone2" class="form-control"
					maxLength="4" /> - <input type="tel" id="phone3" name="phone3"
					class="form-control" maxLength="4" /> <input type="hidden"
					id="user_phone" name="user_phone" class="form-control"
					placeholder="휴대폰 번호를 입력해주세요." type="text"> <span
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
		<div class="text-center" style="text-align: center; font-size: 0.8em;">
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

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
<script>
function validate() {
	event.preventDefault(); // 기능 잠시 꺼두기
	var result = true;
	// 유효성 검사 시작

	// 휴대폰 번호 3칸으로 나눠서 입력받기

	var upassword = $("#user_password").val();
	var upassword2 = $("#user_password2").val();

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
	if (result) {
		$("#pwChangeForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
	} else {
		 var reg_pwd = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	}
	if (!reg_pwd.test(upassword) || !reg_pwd.test(upassword2)) {
		result = false;
		swal("영문, 숫자 혼합하여 최소 6~20자리 이내의 비밀번호를 입력해야 합니다.");
		$('#user_password').val('');
		$('#user_password2').val('');
		$('#user_password').focus();
	} else if (upassword === "" || upassword2 === "") {
		result = false;
		swal("비밀번호를 입력하지 않았습니다.");
	}  else if (upassword !== upassword2) {
		result = false;
		swal("비밀번호가 서로 일치하지 않습니다.");
		$('#user_password').focus();
	}
}
</script>


<div class="header2">
	<div class="inner" style="font-size: 0.85em; padding-top: 5px;">
		홈 > 비밀번호 </div>
</div>

<div class="card" style="border: white;">
	<article class="card-body mx-auto" style="width: 500px;">
								<h4 class="card-title mt-4 mb-4 text-center">
									<strong>비밀번호 변경</strong>
								</h4>

								<form id="pwChangeForm" name="pwChangeForm" method="post"
									action="pwChangeBySearch" onsubmit="validate()"
									novalidate="novalidate">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
										
					

									<div style="font: bold;">
										<strong>변경 비밀번호</strong><span style="color: red;">*</span>
									</div>
									<div class="form-group input-group">
										<input id="user_password" name="user_password"
											class="form-control" placeholder="비밀번호를 입력하세요.(영문,숫자 포함 6~20자 이내)"
											type="password"><span id="errorUserpassword"
											class="text-danger error"></span>
									</div>
									<div style="font: bolder;">
										<strong>변경 비밀번호 확인</strong><span style="color: red;">*</span>
									</div>
									<div class="form-group input-group">
										<input id="user_password2" name="user_password2"class="form-control" placeholder="비밀번호를 한번 더 입력해 주세요."
											type="password"><span id="errorUserpassword2"
											class="text-danger error"></span>
									</div>

									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block"
											style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
											확인</button>
									</div>
								</form>
							</article>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

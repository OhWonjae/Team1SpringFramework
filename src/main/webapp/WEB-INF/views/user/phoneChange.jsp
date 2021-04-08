<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<title>휴대전화번호 변경</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

.info {
	margin: 20px auto 0;
	padding: 24px 120px 24px 40px;
	border-radius: 8px;
	border: 1px solid #e9ecef;
	flex-direction: row;
}

.photo {
	float: left;
	padding-right: 15px;
}

.col-2 {
	text-align: left;
	font-size: 12px;
}

.list-group-item-action {
	color: #222;
	background-color: white;
	border-color: white;
}

.list-group-item-action:focus {
	color: red;
	background-color: white;
	border-color: white;
}

.list-group-item-action:hover {
	color: red;
	background-color: white;
	border-color: white;
}

.list-group-item.active {
	color: red;
	background-color: white;
	border-color: #fff;
}
</style>
<script>
	function validate() {
		event.preventDefault(); // 기능 잠시 꺼두기
		var result = true;
		// 유효성 검사 시작

		// 휴대폰 번호 3칸으로 나눠서 입력받기
		var user_phone1 = $("#phone1").val();
		var user_phone2 = $("#phone2").val();
		var user_phone3 = $("#phone3").val();
		var user_phone = user_phone1 + user_phone2 + user_phone3;
		document.getElementById("user_phone").value = user_phone;
		const uphone = $("#user_phone").val();

		console.log(user_phone);
		console.log(user_phone1);
		console.log(user_phone2);
		console.log(user_phone3);

		if (user_phone2 === "" || user_phone3 === "") { // 비어있으면 문제
			result = false;
			$("#errorUserphone").html("필수사항 입니다.");
		}
		if (result) {
			$("#phoneChangeForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
		} else {
			var re_hp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		}
		if (!re_hp.test(uphone)) {
			result = false;
			swal("휴대폰 번호에 맞는 형식이 아닙니다.");
			$('#user_phone').val('');
			$('#user_phone').focus();
		}
	}
</script>
<body>
	<div>
		<div class="header2">
			<div class="inner"
				style="font-size: 0.75em; padding-top: 10px; color: rgb(134, 134, 138);">홈
				> 마이페이지 > 회원정보</div>
		</div>
	</div>
	<div class="inner">
		<div class="info" style="height: 120px;">
			<picture style="float: left;"> <img
				src="${pageContext.request.contextPath}/resources/img/profile-empty.svg"
				style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff;">
			</picture>
			<div style="float: left; padding-left: 20px; padding-top: 15px;">
				<strong>${user.user_name}</strong> <i class="fas fa-cog"></i>
				<div style="color: rgb(138, 138, 146); font-size: 0.9em;">${user.user_id}</div>
			</div>
		</div>
		<div class="row">
			<div class="col-2">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-my" id="list-home-list"
						style="text-decoration: none; border-color: white; color: black; font-weight: bold; font-size: 1.3em;">마이페이지</a>
					<hr />
					<a class="list-group-item list-group-item-action active"
						href="<%=application.getContextPath()%>/user/my" role="tab"
						aria-controls="home">회원정보</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/order/history" role="tab"
						aria-controls="profile">주문내역</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/order/cart" role="tab"
						aria-controls="messages">장바구니</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/boards/askList" role="tab"
						aria-controls="settings">고객센터</a>
				</div>
			</div>
			<div class="col-10">

				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-home"
						role="tabpanel" aria-labelledby="list-home-list">

						<div class="card" style="border: white;">

							<article class="card-body mx-auto" style="width: 500px;">
								<h4 class="card-title mt-4 mb-4 text-center">
									<strong>휴대폰번호 변경</strong>
								</h4>

								<form id="phoneChangeForm" name="phoneChangeForm" method="post" action="updatePhone"
		onsubmit="validate()" novalidate="novalidate">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<div style="font: bolder;">
										<strong>휴대폰 번호</strong><span style="color: red;">*</span>
										<div class="form-group input-group">
											<select class="form-control" type="tel" id="phone1"
												name="phone1" maxLength="3">
												<option selected="" value="010">010</option>
												<option>011</option>
												<option>016</option>
												<option>017</option>
												<option>019</option>
											</select> - <input type="tel" id="phone2" name="phone2"
												class="form-control" maxLength="4" /> - <input type="tel"
												id="phone3" name="phone3" class="form-control" maxLength="4" />
											<input type="hidden" id="user_phone" name="user_phone"
												class="form-control" placeholder="휴대폰 번호를 입력해주세요."
												type="text"> <span id="errorUserphone"
												class="text-danger error"></span>
										</div>

									</div>




									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block"
											style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
											확인</button>
									</div>
								</form>
							</article>
						</div>
					</div>
					<div class="tab-pane fade" id="list-profile" role="tabpanel"
						aria-labelledby="list-profile-list">...</div>
					<div class="tab-pane fade" id="list-messages" role="tabpanel"
						aria-labelledby="list-messages-list">...</div>
					<div class="tab-pane fade" id="list-settings" role="tabpanel"
						aria-labelledby="list-settings-list">...</div>

				</div>
			</div>

		</div>
	</div>

	<div>
		<br> <br> <br>

	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
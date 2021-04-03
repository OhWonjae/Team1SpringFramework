<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<body>
	<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
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
						id="list-home-list" data-toggle="list" href="#list-home"
						role="tab" aria-controls="home">회원정보</a> <a
						class="list-group-item list-group-item-action"
						id="list-profile-list" data-toggle="list" href="#list-profile"
						role="tab" aria-controls="profile">주문내역</a> <a
						class="list-group-item list-group-item-action"
						id="list-messages-list" data-toggle="list" href="#list-messages"
						role="tab" aria-controls="messages">장바구니</a> <a
						class="list-group-item list-group-item-action"
						id="list-settings-list" data-toggle="list" href="#list-settings"
						role="tab" aria-controls="settings">고객센터</a>
				</div>
			</div>
			<div class="col-10">

				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-home"
						role="tabpanel" aria-labelledby="list-home-list">

						<div class="card" style="border: white;">

							<article class="card-body mx-auto" style="width: 500px;">
								<h4 class="card-title mt-4 mb-4 text-center">
									<strong>비밀번호 변경</strong>
								</h4>

								<form method="post" action="updateUser">
								<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />

									<div style="font: bold;">
										<strong>변경 비밀번호</strong><span style="color: red;">*</span>
									</div>
									<div class="form-group input-group">
										<input id="user_password" name="user_password"
											class="form-control" placeholder="비밀번호를 4자 이상 입력하세요."
											type="password">
									</div>
									<div style="font: bolder;">
										<strong>변경 비밀번호 확인</strong><span style="color: red;">*</span>
									</div>
									<div class="form-group input-group">
										<input class="form-control" placeholder="비밀번호를 한번 더 입력해 주세요."
											type="password">
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
</body>
</html>
</html>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>

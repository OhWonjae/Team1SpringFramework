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

.start {
	background-color: #e9ecef;
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

.header2 {
	padding-left: 25px;
	background-color: rgb(244, 244, 245);
	height: 36px;
	align-content: center;
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

/* .table{
            background-color: white;
            border: 1px thin rgb(138, 138, 146);
            font-size: 1em;
            font-family: Noto Sans KR, sans-serif;
            font-weight: 800;
        }
        
        
        .table .thead-light th {
            
            background-color: rgba(244, 244, 245, 160);
            border-color: rgba(244, 244, 245, 160);
        }

        
        thead tr{
            text-align: center;
        } 
        .table td, .table th {
            padding: .75rem;
            vertical-align: middle;
            border-top: 1px solid #dee2e6;
            border-right: 1px solid #dee2e6;
        }
        .table thead th {
            vertical-align: middle;
            border-bottom: 2px solid #dee2e6;
        } */
</style>
</head>
<body>
	<div class="start">
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
									<strong>휴대전화번호 변경</strong>
								</h4>

								<form method="post" action="update2">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<div style="font: bolder;">
										<strong>휴대번호</strong><span style="color: red;">*</span>
									</div>
									<div class="form-group input-group">
										<input class="form-control" id="user_phone"
											name="user_phone" placeholder="변경할 휴대전화 번호를 입력하세요."
											type="number">
									</div>
									<div class="text-center"
										style="text-align: center; font-size: 0.7em;">휴대전화번호를
										정확히 입력해 주세요.</div>
									<div></div>
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
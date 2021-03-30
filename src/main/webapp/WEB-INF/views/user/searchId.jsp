
<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

<style type="text/css">
* {
	box-sizing: border-box;
	margin: 0px;
	padding: 0px;
}

.jss486 {
	height: 40px;
	padding: 10 5 2 4px;
	margin: 0px 0px 10px 0px;
	border-top: 1px solid rgba(235, 235, 235, 1);
	border-bottom: 1px solid #cfcfd0;
}

.header2 {
	padding-left: 25px;
	background-color: rgb(244, 244, 245);
	height: 30px;
	font-size: 0.85em;
}

.center {
	display: flex;
	justify-content: center;
}

.box {
	padding: 10px;
	background-color: white;
	flex: 2;
	font-size: 0.8em;
	font-family: Noto Sans KR, sans-serif;
	font-weight: 400;
}

.event {
	background-color: rgb(255, 81, 82);
	color: white;
	font-size: 0.9em;
	display: inline;
	padding-inline: 8px;
	border-radius: 5px;
}
</style>

<div class="header2">
	<div class="inner" style="font-size: 0.85em; padding-top: 5px;">
		홈 > 아이디 찾기</div>
</div>

<div class="card" style="border: white;">
	<article class="card-body mx-auto" style="width: 500px;">
		<h4 class="card-title mt-4 mb-4 text-center">
			<strong>아이디 찾기</strong>
		</h4>

		<form method="post"
			action="findid">
			<div style="padding: 5px 0 0 0;">
				<strong>이름</strong><span style="color: red;">*</span>
				<div class="form-group input-group">
					<input class="form-control" id="uname" name="uname"
						placeholder="이름을 입력하세요." type="text">
				</div>
			</div>
			<div style="font: bolder;">
				<strong>휴대전화</strong><span style="color: red;">*</span>
				<div class="form-group input-group">
					<input class="form-control" id="uphone" name="uphone"
						placeholder="휴대전화 번호를 입력하세요." type="number">
				</div>
			</div>
			<div class="text-center"
				style="text-align: center; font-size: 0.7em;">구매내역이 있는 회원만 등록된
				휴대전화번호로 찾을 수 있습니다.</div>
			<br>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block"
					style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
					확인</button>
			</div>
		</form>
	</article>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
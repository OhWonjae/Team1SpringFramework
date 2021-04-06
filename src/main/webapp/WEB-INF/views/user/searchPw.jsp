
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
</style>

<div class="header2">
	<div class="inner" style="font-size: 0.85em; padding-top: 5px;">
		홈 > 비밀번호 찾기</div>
</div>

<div class="card" style="border: white;">
	<article class="card-body mx-auto" style="width: 500px;">
		<h4 class="card-title mt-4 mb-4 text-center">
			<strong>비밀번호 찾기</strong>
		</h4>
		<form method="post" action="searchPw">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<div style="font: bold;">
				<strong>아이디(이메일)</strong><span style="color: red;">*</span>
				<div class="form-group input-group">
					<input name="user_id" class="form-control" placeholder="아이디(이메일)을 입력하세요."
						type="email">
				</div>
			</div>
			<div style="font: bolder;">
				<strong>휴대폰 번호</strong><span style="color: red;">*</span>
				<div class="form-group input-group">
					<input name="user_phone" class="form-control" placeholder="휴대폰 번호를 입력하세요."
						type="number">
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

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

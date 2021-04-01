
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
      홈 > 아이디 찾기</div>
</div>

<div class="card" style="border: white;">
   <article class="card-body mx-auto" style="width: 500px;">
      <h4 class="card-title mt-4 mb-4 text-center">
         <strong>아이디 찾기</strong>
      </h4>

      <form method="post" action="searchId">
      <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
         <div style="padding: 5px 0 0 0;">
            <strong>이름</strong><span style="color: red;">*</span>
            <div class="form-group input-group">
               <input class="form-control" id="user_name" name="user_name"
                  placeholder="이름을 입력하세요." type="text">
            </div>
         </div>
         <div style="font: bolder;">
            <strong>휴대전화</strong><span style="color: red;">*</span>
            <div class="form-group input-group">
               <input class="form-control" id="user_phone" name="user_phone"
                  placeholder="휴대전화 번호를 입력하세요." type="number">
            </div>
         </div>
         {user.user_id}
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
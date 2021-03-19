<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<head>
		<title>Spring</title>
		<%-- application: servletContext(웹 애플래케이션 실행 정보를 가지고 있는 객체)참조 --%>
		<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/bootstrap-4.6.0/js/bootstrap.bundle.min.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
	</head>

   
    <!--결재완료 페이지 시작-->
    <div class="inner" style=" height:30vw; ">
      <!--결재완료 페이지 컨테이너-->
      <div class="container-fluid justify-content-center" style="width: 100%;height: 100%; display:flex; flex-direction: column; justify-content: center; align-items: center;">
          <!--결재완료 아이콘-->
          <i class="fas fa-check" style="font-size: 10em; "></i>
          <!--결재완료 텍스트-->
          <div style="margin:5% 0; font-size:xx-large;">
              결재가 완료되었습니다.
          </div>
          <!--확인 버튼-->
          <div style="width: 30%;" style="margin:5%;">
          	<a type="button" class="btn btn-danger text-center btn-lg btn-block" href="<%=application.getContextPath()%>/index/history" style=" width: 100%;">확인</a>
          </div>
      </div>
  </div>
   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
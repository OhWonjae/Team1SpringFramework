<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>



<div>
	<div class="alert alert-danger">
		현재 로그인한 계정으로는 접근할 수 없는 경로입니다.
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
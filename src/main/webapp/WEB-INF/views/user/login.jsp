<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
	<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/hungyun.css">


    <div class="header2">
        <div class="inner" style="font-size: 0.80em; padding-top: 5px;">
            홈 > 로그인
        </div>
    </div>

    <div class="card" style="border: white;">
        <article class="card-body align-self-center" style="width: 500px;">
            <h4 class="card-title mt-3 text-center">
                <strong>로그인</strong>
            </h4>
                <br>
            <form  method="post" action="<%=pageContext.getServletContext().getContextPath()%>/main">
                <div class="form-group input-group">
                    <input name="" class="form-control" placeholder="이메일을 입력하세요." type="email">
                </div> 
                
                <div class="form-group input-group">
                    <input name="" class="form-control" placeholder="비밀번호을 입력하세요." type="password">
                </div> 
                
                <br>

                <div class="form-group" >
                    <button type="submit" class="btn btn-primary btn-block" style="background-color : rgb(255, 81, 82); height: 50px ;border-color: rgb(255, 81, 82);">
                            로그인 
                    </button>
                </div>      
                
                <div class="form-group" >
                    <button type="button" onclick="location.href='<%=application.getContextPath()%>/user/signUp'"  class="btn btn-primary btn-block" onclick="location.href='signUp.html'"  style="background-color : white; color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
                         회원가입 
                    </button>
                </div>  
                
                <div class="text-center" style="text-align: center; font-size: 0.7em;">
                    <button type="button" class="button" onclick="location.href='<%=application.getContextPath()%>/user/searchId' " > 아이디 찾기 | </button>
                    <button type="button" class="button" onclick="location.href='<%=application.getContextPath()%>/user/searchPw' "> 비밀번호 찾기 </button>
                </div>  
            
            </form>
        </article>
    </div> 
    



<%@ include file="/WEB-INF/views/common/footer.jsp"%>
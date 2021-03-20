<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/hungyun.css">

    <div class="header2">
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 회원가입</div>
    </div>

    <article class="card-body mx-auto" style="width: 500px;">
        <h4 class="card-title mt-3 text-center"><strong>회원 가입</strong>
        </h4>
        
        <form method="post" action="login">
            <div style="padding: 20px 0 0 0;">
                <strong>이름</strong><span style="color: red;">*</span>
                <div class="form-group input-group">
                    <input name="" class="form-control" placeholder="이름을 입력하세요." type="text">
                </div> 
            </div>
            

            <div>
                <strong>이메일</strong><span style="color: red;">*</span>
                <div class="form-group input-group">
                    <input name="" class="form-control" placeholder="이메일을 입력하세요." type="email">
                </div> 
            </div>
            
        
            <div>
                <strong>비밀번호</strong><span style="color: red;">*</span>
                <div class="form-group input-group">
                    <input class="form-control" placeholder="비밀번호를 6자 이상 입력해 주세요." type="password">
                </div>
            </div>
            
            <div>
                <strong>비밀번호 확인</strong><span style="color: red;">*</span>
                <div class="form-group input-group">
                    <input class="form-control" placeholder="비밀번호를 한번 더 입력해주세요." type="password">
                </div>  
            </div>
             
            
            <div>
                <strong>크기(소형,중형,대형)</strong><span style="color: red;">*</span>
                <div class="form-group input-group">
                    <select class="form-control">
                        <option selected="">강아지의 사이즈를 선택하세요.</option>
                        <option>소형</option>
                        <option>중형</option>
                        <option>대형</option>
                    </select>
                </div> 
            </div>
            
            <div class="form-group" >
                <button type="submit" class="btn btn-primary btn-block" onclick="location.href='<%=application.getContextPath()%>/index/login' " style="background-color : rgb(255, 81, 82); height: 50px ;border-color: rgb(255, 81, 82);">
                    <strong>회원가입</strong> 
                </button>
            </div>      
            <div class="text-center" style="text-align: center; font-size: 0.9em;">본인은 민 14세 이상이며, DOGSINSA 
                <span style="color: #228be6;">이용약관, 개인정보 수집 및 이용</span>
                내용을 확인 하였으며, 동의합니다.
            </div>      

        </form>
    </article>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
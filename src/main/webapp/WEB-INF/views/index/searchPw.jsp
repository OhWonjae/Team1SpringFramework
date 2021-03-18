   <%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
 
 
 <div class="header2">
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">
            홈 > 비밀번호 찾기
        </div>
    </div>

    <div class="card" style="border: white;">
        <article class="card-body mx-auto" style="width: 500px;">
            <h4 class="card-title mt-4 mb-4 text-center">
                <strong>비밀번호 찾기</strong>
            </h4>

            <form>
                <div style="padding: 5px 0 0 0;">
                    <strong>필수 입력</strong><span style="color: red;">*</span>
                    <div class="form-group input-group">
                        <input name="" class="form-control" placeholder="아이디를 입력하세요." type="text">
                    </div> 
                </div>
            
                <div style="font:bold;">
                    <strong>이메일</strong><span style="color: red;">*</span>
                    <div class="form-group input-group">
                        <input name="" class="form-control" placeholder="이메일을 입력하세요." type="email">
                    </div>
                </div>
            
            
                <div style="font:bolder;">
                    <strong>휴대전화</strong><span style="color: red;">*</span>
                    <div class="form-group input-group">
                        <input class="form-control" placeholder="휴대전화 번호를 입력하세요." type="number">
                    </div> 
                </div>
                
                <div class="text-center" style="text-align: center; font-size: 0.7em;">
                    구매내역이 있는 회원만 등록된 휴대전화번호로 찾을 수 있습니다.
                </div>  

                <br>

                <div class="form-group" >
                    <button type="submit" onclick="location.href='login.html' " class="btn btn-primary btn-block" style="background-color : rgb(255, 81, 82); height: 50px ;border-color: rgb(255, 81, 82);">
                        확인 
                    </button>
                </div>
            </form>
        </article>
    </div>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>

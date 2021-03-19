<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<style>

.button {     
    background-color: Transparent;
    background-repeat:no-repeat;
    border: none;
    cursor:pointer;
    overflow: hidden;        
}   


.inner2{
    width:100%;
    height:100%;
    margin-left: auto;
    margin-right: auto;
    padding: 2rem 6rem;
    overflow: hidden;
}
.btn-light:hover {
    color: #ff3357;
    background-color: white;
    border-color: #ff3357;
}


.btn-light {
    color: #ff3357;
    background-color: white;
    border-color: #ff3357;
}

.btn-light:focus {
    color: white;
    background-color: #ff3357;
    border-color: #ff3357;
}

.jss486 {
    height: 40px;
    padding: 10 5 2 4px;
    margin: 0px 0px 10px 0px;
    border-top: 1px solid rgba(235, 235, 235, 1);
    border-bottom: 1px solid #cfcfd0;
}


.center{
    display: flex;
    justify-content: center;
}

.crown_text {
    left: 10.5px;
    top: 1px;
}

.box{
    padding: 10px;
    background-color: white;
    flex: 2;
    font-size: 0.8em;
    font-family: Noto Sans KR, sans-serif;
    font-weight: 400;
}

.event{
    background-color: rgb(255, 81, 82);
    color: white;
    font-size: 0.9em;
    display: inline;
    padding-inline: 8px;
    border-radius: 5px;
}
</style>

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
            <form>
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
                    <button type="button" class="btn btn-primary btn-block" onclick="location.href='signUp.html'"  style="background-color : white; color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">
                         회원가입 
                    </button>
                </div>  
                
                <div class="text-center" style="text-align: center; font-size: 0.7em;">
                    <button type="button" class="button" onclick="location.href='searchId.html' " > 아이디 찾기 | </button>
                    <button type="button" class="button" onclick="location.href='searchPw.html' "> 비밀번호 찾기 </button>
                </div>  
            
            </form>
        </article>
    </div> 
    



<%@ include file="/WEB-INF/views/common/footer.jsp"%>
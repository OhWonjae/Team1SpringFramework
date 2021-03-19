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
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 회원가입</div>
    </div>

    <article class="card-body mx-auto" style="width: 500px;">
        <h4 class="card-title mt-3 text-center"><strong>회원 가입</strong>
        </h4>
        
        <form>
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
                <button type="submit" class="btn btn-primary btn-block" onclick="location.href='login.html' " style="background-color : rgb(255, 81, 82); height: 50px ;border-color: rgb(255, 81, 82);">
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
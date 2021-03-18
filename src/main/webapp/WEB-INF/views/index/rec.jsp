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
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">
            홈 > 추천
        </div>
	</div>
	
	<div class="center inner">
		
		<div class="content" >
			
			
			<div class="box"> 
				<h3 style="padding-top: 10px;">추천</h3>	
			</div>		

			<div class="jss486" style="padding: 3px;">
			    <span style="padding: 10px;"><strong>15</strong>개의 상품</span>
			</div>

			<div class="center">
                <div class="box col-sm2" style="float: left;" > 
                    <a href="detail.html" style="color: black;">
                        <img src="/photo\/rank_photo/photo1.jpg" width="100%">
                        플로트 스탠다드 골지 티셔츠 옐로우
                        <p><strong style="font-size: 1.2em;">17,000원</strong></p>
                        <i class="fas fa-star" style="color: #ff3357;"></i> 
                        <i class="fas fa-star" style="color: #ff3357;"></i> 
                        <i class="fas fa-star" style="color: #ff3357;"></i> 
                        <i class="fas fa-star" style="color: #ff3357;"></i> 
                        <i class="fas fa-star" style="color: #ff3357;"></i>
                        <a style="color: silver;"> (25)</a>
                    </a>
                    </br>
                    <div class="event">이벤트</div>
                </div>
                <div class="box col-sm2" style="float: left;">
    
                    <img src="../photo\/rank_photo/photo2.jpg"  width="100%">
                    플로트 스탠다드 민소매 티셔츠 옐로우블루
                    <p><strong style="font-size: 1.2em;">14,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: silver;"></i>     
                    <a style="color: silver;"> (25)</a>
                    </br>
                    <div class="event">이벤트</div>
      
                </div>
                <div class="box col-sm2"  style="float: left;">
    
                    
                    <img src="../photo\/rank_photo/photo3.jpg"  width="100%">
                    플로트 스탠다드 골지 티셔츠 그린
                    <p><strong style="font-size: 1.2em;">17,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (14)</a>
                    </br>
                    <div class="event">이벤트</div>

                </div>
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo4.jpg"  width="100%">
                    스니프 페인트 티셔츠 멀티
                    <p><strong style="font-size: 1.2em;">11,200원 ~ 18,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: silver;"></i>     
                    <a style="color: silver;"> (10)</a>
                    </br>
                    <div class="event">이벤트</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo5.jpg"  width="100%">
                    스니프 도트 셔츠 드레스
                    <p><strong style="font-size: 1.2em;">16,900원 ~ 26,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star-half-alt" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (4)</a> 
                    </br>
                    <div class="event">이벤트</div>
                    
                </div>
                
            </div>
            <div class="center">

                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo6.jpg"  width="100%">
                    베니즈 배색 카라 티셔츠 핑크
                    <p><strong style="font-size: 1.2em;">12,000원 ~ 17,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (1)</a>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo7.jpg"  width="100%">
                    스니프 체리 가운
                    <p><strong style="font-size: 1.2em;">15,500원 ~ 24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star-half-alt" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (2)</a>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo8.jpg"  width="100%">
                    이츠독 브루노 스판 면 티셔츠 머스타드
                    <p><strong style="font-size: 1.2em;">19,000원 ~ 24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </br>
                    <div class="event">
                        이벤트
                    </div>
                    
                </div>
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo9.jpg"  width="100%">
                    플로트 스탠다드 맨투맨 V라인 옐로우
                    <p><strong style="font-size: 1.2em;">19,000원</strong></p>      
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>          
                </div>
                <div class="box col-sm2"  style="float: left;">
                   
                    <img src="../photo\/rank_photo/photo10.jpg"  width="100%">
                    플로트 스탠다드 맨투맨 V라인 아이보리
                    <p><strong style="font-size: 1.2em;">19,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
            </div>
                
            <div class="center">
                <div class="box col-sm2"  style="float: left;">
                    
                    <img src="../photo\/rank_photo/photo11.jpg"  width="100%">
                    패리스독 베이직 티셔츠 핑크
                    <p><strong style="font-size: 1.2em;">9,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2"  style="float: left;">
                   
                    <img src="../photo\/rank_photo/photo12.jpg"  width="100%">
                    패리스독 베이직 티쳐츠 네이비
                    <p><strong style="font-size: 1.2em;">8,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                    </br>
                    <div class="event">이벤트</div>
                </div>
            
                <div class="box col-sm2"  style="float: left;">
                    <img src="../photo\/rank_photo/photo13.jpg"  width="100%">
                    헤이제리 무지개 러브 탑 컷 아웃
                    <p><strong style="font-size: 1.2em;">24,700원 ~ 26,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                    </br>
                    <div class="event">이벤트</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <img src="../photo/rank_photo/photo14.jpg"  width="100%">
                    스니프 개구리 레인코트
                    <p><strong style="font-size: 1.2em;">31,000원 ~ 38,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                    </br>
                    <div class="event">이벤트</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <img src="../photo/rank_photo/photo15.jpg"  width="100%">
                    스니프 스트라이프 버디 프렌치 올인원 멀티
                    <p><strong style="font-size: 1.2em;">14,000원 ~ 22,000원</strong></p> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
            </div>
                
		</div>
        
    </div>  
    <br>
    <br>
    <br>
    <br>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
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
                    <a href="<%=application.getContextPath()%>/product/detail" style="color: black;">
                    
                        <img src="<%=application.getContextPath() %>/resources/img/photo1.jpg" width="100%">
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
    
                    <img src="<%=application.getContextPath() %>/resources/img/photo2.jpg"  width="100%">
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
    
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo3.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo4.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo5.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo6.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo7.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo8.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo9.jpg"  width="100%">
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
                   
                    <img src="<%=application.getContextPath() %>/resources/img/photo10.jpg"  width="100%">
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
                    
                    <img src="<%=application.getContextPath() %>/resources/img/photo11.jpg"  width="100%">
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
                   
                    <img src="<%=application.getContextPath() %>/resources/img/photo12.jpg"  width="100%">
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
                    <img src="<%=application.getContextPath() %>/resources/img/photo13.jpg"  width="100%">
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
                    <img src="<%=application.getContextPath() %>/resources/img/photo14.jpg"  width="100%">
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
                    <img src="<%=application.getContextPath() %>/resources/img/photo15.jpg"  width="100%">
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

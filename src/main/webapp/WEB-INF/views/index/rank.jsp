<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 시작 --%>
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
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 랭킹</div>
	</div>
	
	<div class="center inner">
		
		<div class="content" >
			
			
			<div class="box"> 
				<h3 style="padding-top: 10px;">랭킹</h3>
                
				<button type="button" class="btn btn-light">전체</button>
				<button type="button" class="btn btn-light">후드티</button>
				<button type="button" class="btn btn-light">원피스</button>
				<button type="button" class="btn btn-light">패딩/코트</button>
				<button type="button" class="btn btn-light">올인원</button>
			</div>		

			<div class="jss486" style="padding: 3px;">
			    <span style="padding: 10px;"><strong>30</strong>개의 상품</span>
			</div>

			<div class="center">
                <div class="box col-sm2" style="float: left; position: relative;" > 
                    
                    <i class="fas fa-crown" style="font-size: 1.7em; color: gold; position: absolute; top:3px"></i>
                    <span class="crown_text" style="position: relative; color: white; font-size: 0.6em;"><strong> 1</strong></span>
                    <a href="detail.html" style="color:black;">
                    
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
                </div>
            
                <div class="box col-sm2" ,style="float: left;">
                    
                    <i class="fas fa-crown" style="font-size: 1.7em; color: silver; position: absolute;"></i>
                    <span class="crown_text" style="position: relative; color: white; font-size: 0.6em;"><strong> 2</strong></span>

                    <img src="<%=application.getContextPath() %>/resources/img/photo2.jpg"  width="100%">
                    플로트 스탠다드 민소매 티셔츠 옐로우블루
                    <p><strong style="font-size: 1.2em;">14,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: silver;"></i>     
                    <a style="color: silver;"> (25)</a>
      
                </div>
                <div class="box col-sm2"  style="float: left;">
                        <i class="fas fa-crown" style="font-size: 1.7em; color: #B87333; position: absolute;"></i>
                        <span class="crown_text" style="position: relative; color: white; font-size: 0.6em;"><strong> 3</strong></span> 
                    <img src="<%=application.getContextPath() %>/resources/img/photo3.jpg"  width="100%">
                    플로트 스탠다드 골지 티셔츠 그린
                    <p><strong style="font-size: 1.2em;">17,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (14)</a>

                </div>
                <div class="box col-sm2"  style="float: left;">
                    <strong>4</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo4.jpg"  width="100%">
                    스니프 페인트 티셔츠 멀티
                    <p><strong style="font-size: 1.2em;">11,200원 ~ 18,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: silver;"></i>     
                    <a style="color: silver;"> (10)</a>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <strong>5</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo5.jpg"  width="100%">
                    스니프 도트 셔츠 드레스
                    <p><strong style="font-size: 1.2em;">16,900원 ~ 26,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star-half-alt" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (4)</a> 
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <strong>6</strong>위
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
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <strong>7</strong>위
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
                <div class="box col-sm2">
                    <strong>8</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo8.jpg"  width="100%">
                    이츠독 브루노 스판 면 티셔츠 머스타드
                    <p><strong style="font-size: 1.2em;">19,000원 ~ 24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>9</strong>위
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
                <div class="box col-sm2">
                    <strong>10</strong>위
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
                <div class="box col-sm2">
                    <strong>11</strong>위
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
                <div class="box col-sm2">
                    <strong>12</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo12.jpg"  width="100%">
                    패리스독 베이직 티쳐츠 네이비
                    <p><strong style="font-size: 1.2em;">8,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <strong>13</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo13.jpg"  width="100%">
                    헤이제리 무지개 러브 탑 컷 아웃
                    <p><strong style="font-size: 1.2em;">24,700원 ~ 26,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>14</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo14.jpg"  width="100%">
                    스니프 개구리 레인코트
                    <p><strong style="font-size: 1.2em;">31,000원 ~ 38,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>15</strong>위
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
                <div class="box col-sm2">
                    <strong>16</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo16.jpg"  width="100%">
                    펫인뷰티 제로넥카라 오트밀
                    <p><strong style="font-size: 1.2em;">24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>17</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo17.jpg"  width="100%">
                    스니프 X 스트랩 스트라이프 드레스옐로우
                    <p><strong style="font-size: 1.2em;">17,600원 ~ 27,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>18</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo18.jpg"  width="100%">
                    스니프 레오파드 셔츠
                    <p><strong style="font-size: 1.2em;">15,500원 ~ 24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <strong>19</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo19.jpg"  width="100%"">
                    이츠독 오가닉 홈케어링 넥카라 스트라이프
                    <p><strong style="font-size: 1.2em;">25,000원 ~ 30,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>20</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo20.jpg"  width="100%">
                    스니프 스트라이프 오버롤
                    <p><strong style="font-size: 1.2em;">16,900원 ~ 26,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>21</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo21.jpg"  width="100%">
                    플로트 스탠다드 맨투맨 레드네이비
                    <p><strong style="font-size: 1.2em;">19,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>22</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo22.jpg"  width="100%">
                    펫인뷰티 제로넥카라 민트
                    <p><strong style="font-size: 1.2em;">24,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>23</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo23.jpg"  width="100%">
                    플레이볼 마카롱 체크 5부 티셔츠 그린
                    <p><strong style="font-size: 1.2em;">12,700원 ~ 18,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>24</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo24.jpg"  width="100%">
                    베니즈 스트라이프 라운드 티셔츠 카키
                    <p><strong style="font-size: 1.2em;">12,000원 ~ 15,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <strong>25</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo25.jpg"  width="100%">
                    스니프 메이저 톰 스웨트셔츠 블루
                    <p><strong style="font-size: 1.2em;">13,300원 ~ 21,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>26</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo26.jpg"  width="100%">
                    베니즈 배색 카라 티셔츠 베이지
                    <p><strong style="font-size: 1.2em";>12,000원 ~ 17,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>27</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo27.jpg"  width="100%">
                    헤이제리 테디베어 퍼 후드 베이지
                    <p><strong style="font-size: 1.2em;">20,400원 ~ 34,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>28</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo28.jpg"  width="100%">
                    이츠독 버디 슈퍼 보아 후드티 블루
                    <p><strong style="font-size: 1.2em;">32,000원 ~ 37,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>29</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo29.jpg"  width="100%">
                    이츠독 버디 슈퍼 보아 후드티 머스타드
                    <p><strong style="font-size: 1.2em;">32,000원 ~ 37,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> 
                    <i class="fas fa-star" style="color: #ff3357;"></i>
                    <a style="color: silver;"> (25)</a>
                </div>
                <div class="box col-sm2">
                    <strong>30</strong>위
                    <img src="<%=application.getContextPath() %>/resources/img/photo30.jpg"  width="100%">
                    이츠독 버디 슈퍼 보아 후드티 베이지
                    <p><strong style="font-size: 1.2em;">32,000원 ~ 37,000원</strong></p>
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

   
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
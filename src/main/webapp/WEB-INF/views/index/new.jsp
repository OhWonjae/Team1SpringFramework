<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
    <style type="text/css">
      * {
            box-sizing:border-box;
         margin: 0px;
         padding: 0px;
      }
      .scale {
        transform: scale(1);
        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        -o-transform: scale(1);
        transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
     }   
     .scale:hover {
         transform: scale(1.2);
        -webkit-transform: scale(1.2);
        -moz-transform: scale(1.2);
        -ms-transform: scale(1.2);
        -o-transform: scale(1.2);
    }   
    .img {width:325px; height:280px; overflow:hidden }   /* 부모를 벗어나지 않고 내부 이미지만 확대 */
      .event{
            background-color: rgb(255, 81, 82);
            color: white;
            font-size: 0.9em;
            display: inline;
            padding-inline: 8px;
            border-radius: 5px;
        }
        <!--
        A:link {text-decoration:none; color: black;}
        A:visited {text-decoration: none; color: black;}
        A:hover{text-decoration: none; color: black;}
        -->
      .jss486 {
          height: 40px;
          padding: 10 5 2 4px;
          margin: 0px 0px 10px 0px;
          border-top: 1px solid rgba(235, 235, 235, 1);
          border-bottom: 1px solid #cfcfd0;
      }
      .header1 {
         background-color: #ff3357;
         text-align: center;
         height: 130px;   
         color: white;
         font-size: 3em;   
      }
      .header2 {
         background-color: gray;
         height: 20px;            
      }
      .center{
         display: flex;
         justify-content: center;
      }
      
      .left{
         display: flex;
         justify-content: left;
      }
      
      .bodyleftblank {
         list-style-type: none;
         padding: 10px;
         background-color: white;
         flex: 0.2;
      }
      
      .content {
         padding: 10px;
         background-color: white;
         flex: 6;
      }
      
      .bodyrightblank {
         list-style-type: none;
         padding: 10px;
         background-color: white;
         flex: 0.2;
      }
      
      .footer{
         background-color: #ff3357;
         font-size: 3em;
         color: white;
         text-align: center;
         height: 300px;
      }
      
      .box{
         padding: 10px;
         background-color: white;
         flex: 2;
            font-size: 0.8em;
            font-family: Noto Sans KR, sans-serif;
            font-weight: 400;
      }
        
    

        .jss909{
            width: 24px;
            border: 0 none;
            height: 24px;
            display: inline-block;
            overflow: hidden;
            text-indent: -1000em;
            background-size: 24px 24px;
        }
        
        .icon_color{
            
            color : gold;
            border: 0 none;
            display: inline-block;
            overflow: hidden;
            position: relative;
        }

        .rank_text{
            text-decoration: #ff3357;
            display: inline-block;
            overflow: hidden;
            position: relative;
            transform: translate( -50%, -50% );
        }
        .header2 {
            padding-left: 25px;
         background-color: rgb(244, 244, 245);
         height: 30px;            
            font-size: 0.85em;   
      }
       
   </style>
</head>

    <div class="header2">
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 신규</div>
   </div>
    <div class="inner">
         <div class="jss486" style="padding: 3px;">
            <span style="padding: 10px;"><strong>30</strong>개의 상품</span>
         </div>
            <div class="center">
                <div class="box col-sm2" style="float: left;"> 
                    <a href="detail.html"> <div class="scale"><img src="${pageContext.request.contextPath}/resources/img/dog1.JPG" width="100%" ></div></a>
                   <a href="#">디크디크 퀄팅 자켓 블랙</a>
                    <p><strong>69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2" ,style="float: left;">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog2.JPG" width="100%"></a>
                    <a href="#">디크디크 퀄팅 자켓 베이지</a>
                    <p><strong>69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>           
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog3.JPG" width="100%"></a>
                    <a href="#">헤이제리 힙스터 파자마 스카이블루</a>
                    <p><strong>39,000원 ~ 40,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog4.JPG" width="100%"></a>
                    <a href="#">헤이제리 힙스터 파자마 그린</a>
                    <p><strong>39,000원 ~ 40,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog5.JPG" width="100%"></a>
                    <a href="#">헤이제리 힙스터 파자마 살몬</a>
                    <p><strong>39,000원 ~ 40,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2"  style="float: left;">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog6.JPG" width="100%"></a>
                    <a href="#">헤이제리 프레피 스트라이프 가디건 스카이블루레드</a>
                    <p><strong>30,000원 ~ 31,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog7.JPG" width="100%"></a>
                    <a href="#">헤이제리 프레피 스트라이프 가디건 핑크블루</a>
                    <p><strong>30,000원 ~ 31,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog8.JPG" width="100%"></a>
                    <a href="#">헤이제리 프레피 스트라이프 가디건 옐로우네이비</a>
                    <p><strong>30,000원 ~ 31,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog9.JPG" width="100%"></a>
                    <a href="#">헤이제리 프레피 스트라이프 가디건 화이트블랙</a>
                    <p><strong>30,000원 ~ 31,000원</strong></p> 
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>               
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog10.JPG" width="100%"></a>
                    <a href="#">헤이제리 레인보우떡 올인원 오리지널 트로피칼</a>
                    <p><strong>35,000원 ~ 36,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog11.JPG" width="100%"></a>
                    <a href="#">헤이제리 레인보우떡 올인원 오리지널 베리베리</a>
                    <p><strong>35,000원 ~ 36,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog12.JPG" width="100%"></a>
                    <a href="#">헤이제리 레인보우떡 올인원 오리지널 핑크소다</a>
                    <p><strong>35,000원 ~ 36,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog13.jpg" width="100%"></a>
                    <a href="#">이츠독 판쵸 올인원 꿀벌우비</a>
                    <p><strong>49,000원 ~ 64,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog14.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 레드</a>
                    <p><strong>35,000원 ~ 58,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog15.jpg" width="100%"></a>
                    <a href="#">스니프 개구리 레인코트</a>
                    <p><strong>31,000원 ~ 38,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div> 
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog16.jpg" width="100%"></a>
                    <a href="#">이츠독 판쵸 올인원 체리우비</a>
                    <p><strong>49,000원 ~ 64,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog17.jpg" width="100%"></a>
                    <a href="#">이츠독 삐약이 수면 조끼 아이보리</a>
                    <p><strong>27,000원 ~ 32,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog18.jpg" width="100%"></a>
                    <a href="#">이츠독 삐약이 수면 조끼 옐로우</a>
                    <p><strong>27,000원 ~ 32,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog19.jpg" width="100%"></a>
                    <a href="#">이츠독 왈 패딩 베스트 아이보리</a>
                    <p><strong>59,000원 ~ 69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog20.jpg" width="100%"></a>
                    <a href="#">이츠독 왈 패딩 베스트 레드</a>
                    <p><strong>59,000원 ~ 69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog21.jpg" width="100%"></a>
                    <a href="#">이츠독 왈 패딩 베스트 핑크</a>
                    <p><strong>59,000원 ~ 69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog22.jpg" width="100%"></a>
                    <a href="#">이츠독 왈 패딩 베스트 민트</a>
                    <p><strong>59,000원 ~ 69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog23.jpg" width="100%"></a>
                    <a href="#">이츠독 왈 패딩 베스트 네이비</a>
                    <p><strong>59,000원 ~ 69,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog24.jpg" width="100%"></a>
                    <a href="#">이츠독 스노우라떼 무스탕 베리라떼 핑크</a>
                    <p><strong>54,000원 ~ 64,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
            </div>
            <div class="center">
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog25.jpg" width="100%"></a>
                    <a href="#">이츠독 스노우라떼 무스탕 초코라떼 브라운</a>
                    <p><strong>54,000원 ~ 64,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog26.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 옐로우</a>
                    <p><strong>35,000원 ~ 58,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog27.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 블루</a>
                    <p><strong>35,000원 ~ 58,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog28.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 핑크</a>
                    <p><strong>35,000원 ~ 58,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog29.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 브라운</a>
                    <p><strong>35,000원 ~ 38,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
                <div class="box col-sm2">
                    <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dog30.jpg" width="100%"></a>
                    <a href="#">퍼피아 베이스 점퍼 레인코트 카모</a>
                    <p><strong>35,000원 ~ 58,000원</strong></p>
                    <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)
                    <br>
                    <div class="event">신상품</div>
                </div>
            </div>    
      </div>
        
      <br/>
      <br/>
      <br/>
      

   </div>
</div>
 <%@ include file="/WEB-INF/views/common/footer.jsp"%> 
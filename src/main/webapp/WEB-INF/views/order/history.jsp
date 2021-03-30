<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

    <div class="header2"> 
        <div class="inner">
            <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 고객센터</div> 
        </div>
     </div>
    <div class="inner" style="margin-bottom: 80px;">
        <div class="info" style="height: 120px;">
             <picture style="float: left;">
                 <img src="<%=application.getContextPath()%>/resources/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff;" >
              </picture>
                <div style="float: left; padding-left: 20px; padding-top: 15px;">
                     <strong>1조</strong> <i class="fas fa-cog"></i>  <div style="color: rgb(138, 138, 146); font-size: 0.9em;">abcd1234@naver.com</div>
                </div>
         </div>
        <br/>
            <div class="row">
                <div class="col-2">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a>
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/user/my" role="tab" aria-controls="home" >회원정보</a>
                    <a class="list-group-item list-group-item-action active" href="<%=application.getContextPath()%>/order/history" role="tab" aria-controls="profile">주문내역</a>
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/cart" role="tab" aria-controls="messages">장바구니</a>
                    <a class="list-group-item list-group-item-action"  href="<%=application.getContextPath()%>/boards/askList" role="tab" aria-controls="settings">고객센터</a>
                </div>
                </div>
                <div class="col-10">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade" id="list-home" role="tabpanel" aria-labelledby="list-home-list"><br><h5><strong>나의 정보</strong></h5> </div>
                        <div class="tab-pane fade show active"  id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                            <div>
                                <h5 style="padding-top: 23px; padding-bottom: 17px; font-size: 1.4em;"><strong>주문 · 배송</strong>
                                </h5>
                            </div>
                            <table class="table";>
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col" style="width: 10%;">주문 번호</th>
                                            <th scope="col" style="width: 10%;">주문 일자</th>
                                            <th scope="col" style="width: 65%;">상품 정보</th>
                                            <th scope="col" style="width: 15%;">진행 상황</th>
                                        </tr>
                                    </thead>
    
                                    <tbody>
                                        <tr>
                                            <th scope="row" style="color:rgb(138, 138, 146);">1556290343861</th>
                                            <td style="color:rgb(138, 138, 146);"> 2019.04.26</td>
                                            <td> <img src="<%=application.getContextPath() %>/resources/img/photo31.jpg" width="20%" style="float: left; margin-right: 10px;">
                                                <strong style="font-size: 1.2em;">이츠독 플러피 기모 후드 점퍼</strong> </br> <strong style="font-size: 1.2em;">26,000원</strong> 
                                            </td>
                                            <td style="border-right: white; text-align: center;">
                                            	 <div>발송처리완료</div>
                                                <div style="margin-top: 5px; font-size: 14px;">
                                                    <a href="<%=application.getContextPath()%>/order/orders?ono=1" >주문 상세내역</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row" style="color:rgb(138, 138, 146); align-items: center;">1556290343861</th>
                                            <td style="color:rgb(138, 138, 146);">2017.06.08</td>
                                            <td> <img src="<%=application.getContextPath() %>/resources/img/photo32.jpg" width="20%" style="float: left; margin-right: 10px;">
                                                <strong style="font-size: 1.2em;">플로트 컬러 블록 후드 블루블랙</strong></br> <strong style="font-size: 1.2em;">26,000원</strong>
                                            </td>
                                            <td style="border-right: white; text-align: center;">
                                            	 <div>발송처리완료</div>
                                                <div style="margin-top: 5px; font-size: 14px;">
                                                    <a href="<%=application.getContextPath()%>/order/orders?ono=1">주문 상세내역</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                            </table>
                        
                        </div>
                    
                    <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list">   
                    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list"> </div>
                </div>
            </div>
        </div>
    </div>
</div>

 <%@ include file="/WEB-INF/views/common/footer.jsp"%>   
    
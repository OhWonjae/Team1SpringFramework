<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

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
                 <img src="<%=application.getContextPath() %>/resources/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff;" >
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
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/history" role="tab" aria-controls="profile">주문내역</a>
                    <a class="list-group-item list-group-item-action active" href="<%=application.getContextPath()%>/order/cart" role="tab" aria-controls="messages">장바구니</a>
                    <a class="list-group-item list-group-item-action"  href="<%=application.getContextPath()%>/user/askList" role="tab" aria-controls="settings">고객센터</a>
                </div>
                </div>
                <div class="col-10">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade" id="list-home" role="tabpanel" aria-labelledby="list-home-list"></div>
                    <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list"><div></div>       
                    <div class="tab-pane fade show active" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list">
                            <div class="cart-main">
                                <div class="cart-title">장바구니</div>
                                <div class="cart-route">
                                    <div class="route route1">01 장바구니></div>
                                    <div class="route route2">02 주문결제></div>
                                    <div class="route route3">03 결제완료</div>
                                </div>
                            </div> 
                            <div class="cart-content">
                                <div class="container" style="margin-bottom: 20px;">
                                    <div class="row cart-content1-box">
                                        <div class="cart-info-box col-sm-5">
                                            <div class="cart-info">
                                            <img src="<%=application.getContextPath() %>/resources/img/rec1.jpg" alt="cart1" style="margin:5px 0"/>
                                            <a class="cart-goods-name" href="<%=application.getContextPath()%>/product/detail">플로트 스탠다드 맨투맨 V라인 멜로</a>
                                            </div>
                                        </div>        
                                        <div class="col-sm-3" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef; margin: 0;">
                                            <div class="count-button">
                                                <div class="btn-group" role="group" aria-label="Basic example">
                                                    <button type="button" class="btn btn-light btn-sm">-</button>
                                                    <div class="count-text">1</div>
                                                    <button type="button" class="btn btn-light btn-sm">+</button>
                                                  </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
                                            <div class="cart-price">
                                                <div style="font-weight: bold;">
                                                    10000000원
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-2" style="border-bottom: 1px solid #e9ecef;">
                                            <div class="delete-button" >
                                                <button type="button" class="btn btn-light">삭제</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row cart-content1-box">
                                        <div class="cart-info-box col-sm-5">
                                            <div class="cart-info">
                                            <img src="<%=application.getContextPath() %>/resources/img/rec1.jpg" alt="cart1" style="margin:5px 0"/>
                                            <a class="cart-goods-name" href="<%=application.getContextPath()%>/product/detail">플로트 스탠다드 맨투맨 V라인 멜로</a>
                                            </div>
                                        </div>        
                                        <div class="col-sm-3" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef; margin: 0;">
                                            <div class="count-button">
                                                <div class="btn-group" role="group" aria-label="Basic example">
                                                    <button type="button" class="btn btn-light btn-sm">-</button>
                                                    <div class="count-text">1</div>
                                                    <button type="button" class="btn btn-light btn-sm">+</button>
                                                  </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
                                            <div class="cart-price">
                                                <div style="font-weight: bold;">
                                                    10000000원
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-2" style="border-bottom: 1px solid #e9ecef;">
                                            <div class="delete-button" >
                                                <button type="button" class="btn btn-light">삭제</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="border:3px solid #FF3357"></div>
                                <div class="row cart-content2-box">
                                    <div class="col-sm-3" style="border-right: 1px solid #e9ecef; margin: 0 0;">
                                      <div class="goods-price">
                                          <div style="text-align:center">총 상품금액</div>
                                          <div style="font-weight: bold; text-align: center;">2000000원</div>
                                      </div>
                                    </div>
                                    <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                        <div class="goods-price">
                                            <div style="text-align:center">배송비</div>
                                            <div style="font-weight: bold; text-align: center;">0원</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                        <div class="goods-price">
                                            <div style="text-align:center">총 결제금액</div>
                                            <div style="font-weight: bold; text-align: center;">2000000원</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="total-price">
                                            <div style="text-align:center; margin-right:1px">합계 : </div>
                                            <div style="font-weight: bold; text-align: center; margin-right:5px">2000000원</div>
                                            <button type="submit" onclick="location.href='<%=application.getContextPath()%>/order/pay'" class="btn btn-secondary">구매하기</button>
                                        </div>
                                      </div>
                                  </div>
                                
                            </div>         
                    </div>
                    
                    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list"></div>
      
                        </div>
                    </div>
                </div>
            </div>
        
    </div>
</div>
    
    
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>
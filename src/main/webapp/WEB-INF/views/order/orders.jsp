<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

 <link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/orders.css">

<div class="header2"> 
    <div class="inner">
        <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 고객센터</div> 
    </div>
</div>
     <div class="inner">
        <div class="info" style="height: 120px;">
            <picture style="float: left;">
                <img src="/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff; ;" >
            </picture>
                <div style="float: left; padding-left: 20px; padding-top: 15px;">
                    <strong>1조</strong> <i class="fas fa-cog"></i>  <div style="color: rgb(138, 138, 146); font-size: 0.9em;">abcd1234@naver.com</div>
                </div>
        </div>
        <br/>
    
        <div class="row">
            <div class="col-2">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a><hr/>
                    <a class="list-group-item list-group-item-action" id="list-home-list"  href="my.html" role="tab" aria-controls="home" >회원정보</a>
                    <a class="list-group-item list-group-item-action active" id="list-profile-list" href="history.html" role="tab" aria-controls="profile">주문내역</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list"href="cart.html" role="tab" aria-controls="messages">장바구니</a>
                    <a class="list-group-item list-group-item-action" id="list-settings-list"  href="cs1.html" role="tab" aria-controls="settings">고객센터</a>
                 </div>
            </div>
            <div class="col-10 col-content">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                         <h7 class="ordersTitle">주문 상세 정보</h7>
                        <div class="orders">
                            <div class="orders-inner" style="background-color: rgba(244,244,245,1);">
                                <div class="orders-top">
                                    <div class="topContents">주문일자:2021.03.29</div>
                                    <div class="topContents">주문번호:1614345435</div>
                                </div>
                            </div>
                            <div class="orders-info">
                                <div class="orders-inner">
                                    <div class="info-container">
                                        <dl class="info1">
                                            <dt class="info-detail">받는 사람</dt>
                                            <dd class="data-name">김명휘</dd>
                                        </dl>
                                        <dl class="info1">
                                            <dt class="info-detail">휴대전화</dt>
                                            <dd class="data-name">010-5319-3079</dd>
                                        </dl>
                                        <dl class="info1">
                                            <dt class="info-detail">배송주소</dt>
                                            <dd class="data-name">경기도 고양시 일산서구 덕이동</dd>
                                        </dl>
                                        <dl class="info1">
                                            <dt class="info-detail">배송 요청사항</dt>
                                            <dd class="data-name">부재시 문앞에 놓고 가주세요</dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <hr/>
                            <div class="orders-detail">
                                <div class="orders-inner">
                                    <div class="orders-table" style="margin: 35px 0;">
                                        <div class="row trow">
                                          <div class="col-3 tname">
                                            총 상품 금액
                                          </div>
                                          <div class="col-9 tdata">
                                            2160원
                                          </div>
                                        </div>
                                        <div class="row trow">
                                          <div class="col-3 tname">
                                            배송비
                                          </div>
                                          <div class="col-9 tdata">
                                            +3000원
                                          </div>
                                        </div>
                                        <div class="row trow">
                                            <div class="col-3 tname">
                                              쿠폰
                                            </div>
                                            <div class="col-9 tdata">
                                              0원
                                            </div>
                                          </div>
                                          <div class="row trow">
                                            <div class="col-3 tname">
                                              보유 현금
                                            </div>
                                            <div class="col-9 tdata">
                                              0원
                                            </div>
                                          </div>
                                          <div class="row trow">
                                            <div class="col-3 tname">
                                              결제방법
                                            </div>
                                            <div class="col-9 tdata">
                                              신용카드<br/>
                                              신한은행2123324324<br/>
                                            </div>
                                          </div>
                                          <div class="row trow">
                                            <div class="col-3 tname">
                                             총 결제금액
                                            </div>
                                            <div class="col-9 tdata">
                                              5160원
                                            </div>
                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="text-align: center;">
                    <button type="button" class="btn btn-primary btn-lg refundBtn" style="background-color: #FF3357; border-color: black;">주문내역으로 이동</button>
                </div>
            </div>
        </div>
     </div>
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>
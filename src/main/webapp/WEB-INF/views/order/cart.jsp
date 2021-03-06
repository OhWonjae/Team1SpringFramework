<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">


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

                     <strong>${user.user_name}</strong> <i class="fas fa-cog"></i>  <div style="color: rgb(138, 138, 146); font-size: 0.9em;">${user.user_id}</div>

                </div>
         </div>
        <br/>
            <div class="row">
                <div class="col-2">
                <div class="list-group" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a>
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/user/my" role="tab" aria-controls="home" >회원정보</a>
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/history?pageNo=1" role="tab" aria-controls="profile">주문내역</a>
                    <a class="list-group-item list-group-item-action active" href="<%=application.getContextPath()%>/order/cart?pageNo=1" role="tab" aria-controls="messages">장바구니</a>
                    <a class="list-group-item list-group-item-action"  href="<%=application.getContextPath()%>/boards/askList?pageNo=1" role="tab" aria-controls="settings">고객센터</a>
                </div>
                </div>
                <div class="col-10">
                <div class="tab-content" id="nav-tabContent">
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
						                    <c:set var="sum" value="0" />
						                    <!-- 장바구니가 비었을 때 -->
						                    <c:if test="${empty list}">
						                    	      <div class="div2">
						                                <div class="nolist" style= "padding:50px;text-align: center";>
						                                    <i class="fas fa-shopping-cart" style="color:#e9ecef;font-size:80px;"></i>
						                                    <div style="padding:20px;">
						                                    장바구니가 비었습니다.
						                                    </div>
						                                </div>
						                            </div>
						                    </c:if>
						                    <!-- 장바구니에 리스트가 있을 때 -->         
							                  <c:forEach var="cart" items="${list}">
	                                
	                                    <div class="row cart-content1-box">
	                                        <div class="cart-info-box col-sm-4">
	                                            <div class="cart-info">
	                                            <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${cart.photo_sname}&photoType=${cart.photo_type}" alt="cart1" style="margin:5px 0"/>
	                                            <a class="cart-goods-name" href="<%=application.getContextPath()%>/product/detail?pid=${cart.p_id}">${cart.p_name}</a>
	                                            </div>
	                                        </div>        
	                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef; margin: 0;">
	                                            <div class="count-button">
	                                                <div class="btn-group" role="group" aria-label="Basic example">
	                                                		<!-- 개별 상품 amount 증가, 감소 버튼-->
	                                                    <a href="<%=application.getContextPath()%>/order/cart/decrease?pid=${cart.p_id}&psize=${cart.p_size}" class="btn btn-light btn-sm">-</a>
	                                                    <span id="numberUpDown" class="count-text">${cart.amount}</span>
	                                                    <a href="<%=application.getContextPath()%>/order/cart/increase?pid=${cart.p_id}&psize=${cart.p_size}" class="btn btn-light btn-sm">+</a>
	                                                  </div>
	                                            </div>
	                                        </div>
	                         
	                        								 <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
	                                            <div class="cart-price">
	                                                <div style="font-weight: bold;">
	                                                    ${(cart.p_size)}
	                                                </div>
	                                            </div>
	                                        </div>
	                         
	
	                                        <div class="col-sm-2" style="border-right: 1px solid #e9ecef;border-bottom: 1px solid #e9ecef;">
	                                            <div class="cart-price">
	                                                <div style="font-weight: bold;">
	                                                    ${(cart.p_price* cart.amount)}
	                                                </div>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-2" style="border-bottom: 1px solid #e9ecef;">
	                                            <div class="delete-button" >
	                                                <a href="<%=application.getContextPath()%>/order/cart/delete?pid=${cart.p_id}&psize=${cart.p_size}" class="btn btn-light">삭제</a>
	                                            </div>
	                                        </div>
	                                    </div>
	                               <!-- 총액을 계산해서 sum에 값을 저장 -->     
	                               <c:set var="sum" value="${sum + (cart.p_price * cart.amount)}" />      
	                              </c:forEach> 
                                
                                    <!-- 장바구니가 비어있지 않을 때 페이저 띄워주기-->                       
                                    <c:if test="${!empty list}">                         
	                                  <div class="d-flex text-center">
																			<div class="flex-grow-1">
																		
																				<a class="btn btn-light btn-sm"
																					href="cart?pageNo=1"><pre style="margin-bottom:0;"><<</pre></a>
																					
																				<c:if test="${pager.groupNo>1}">
																					<a class="btn btn-outline-info btn-sm"
																					href="cart?pageNo=${pager.startPageNo-1}">이전</a>
																				</c:if>	
																				
																				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
																					<a class="btn 
																					<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
																					<c:if test='${pager.pageNo!=i}'>btn-light</c:if>
																					
																					btn-sm" href="cart?pageNo=${i}">${i}</a>
																				</c:forEach>
																				
																				<c:if test="${pager.groupNo<pager.totalGroupNo}">
																					<a class="btn btn-outline-info btn-sm"
																					href="cart?pageNo=${pager.endPageNo+1}">다음</a>
																				</c:if>		
																					
																				<a class="btn btn-light btn-sm"
																					href="cart?pageNo=${pager.totalPageNo}"><pre style="margin-bottom:0;">>></pre></a>
																			</div>
																		</div> 
                                 	</c:if>

                                </div>
                              
                              <!-- 장바구니가 비어있지 않을 때 총액 띄워주기-->  
                              <c:if test="${!empty list}">
                              
                  					   <div style="border:3px solid #FF3357"></div>
                                <div class="row cart-content2-box">
                                    <div class="col-sm-3" style="border-right: 1px solid #e9ecef; margin: 0 0;">
                                      <div class="goods-price">
                                          <div style="text-align:center">총 상품금액</div>
                                          <div style="font-weight: bold; text-align: center;">
                                          	<fmt:formatNumber pattern="###,###,###" value="${sum}" />원
                                          </div>
                                      </div>
                                    </div>
                                    <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                        <div class="goods-price">
                                            <div style="text-align:center">배송비</div>
                                            <div style="font-weight: bold; text-align: center;">+3,000원</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2" style="border-right: 1px solid #e9ecef;">
                                        <div class="goods-price">
                                            <div style="text-align:center">총 결제금액</div>
                                            <div style="font-weight: bold; text-align: center;">
                                            	<fmt:formatNumber pattern="###,###,###" value="${sum+3000}"/>원
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="total-price">
                                            <div style="text-align:center; margin-right:1px">합계 : </div>
                                            <div style="font-weight: bold; text-align: center; margin-right:5px">
                                            	<fmt:formatNumber pattern="###,###,###" value="${sum+3000}" />원
                                            </div>
                                            <button type="submit" onclick="location.href='<%=application.getContextPath()%>/order/pay'" class="btn btn-secondary">구매하기</button>
                                        </div>
                                    </div>
                                 </div>
                           
                                 
								               </c:if>
                            </div>         
                    </div>

                 </div>
                 </div>
            </div>   
         </div>
         
        
    
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>
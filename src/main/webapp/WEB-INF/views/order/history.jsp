<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

    <div class="header2"> 
        <div class="inner">
            <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 주문내역</div> 
        </div>
     </div>
    <div class="inner" style="margin-bottom: 80px;">
        <div class="info" style="height: 120px;">
             <picture style="float: left;">
                 <img src="<%=application.getContextPath()%>/resources/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff;" >
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
                    <a class="list-group-item list-group-item-action active" href="<%=application.getContextPath()%>/order/history" role="tab" aria-controls="profile">주문내역</a>
                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/cart?pageNo=1" role="tab" aria-controls="messages">장바구니</a>
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
                              <c:if test="${empty list}">
                               <div class="cart-content">
                                <div class="container" style="margin-bottom: 20px;">
                                               <div class="div2">
                                                  <div class="nolist" style= "padding:50px;text-align: center";>
                                                      <i class="far fa-sticky-note" style="color:gray;font-size:80px;"></i>
                                                      <div>
                                                      주문내역이 없습니다.
                                                      </div>
                                                  </div>
                                              </div>
                                             </div>
                                            </div>
                                      </c:if>         
                       <c:if test="${!empty list}">                
                            <table class="table">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col" style="width: 10%;">주문 번호</th>
                                            <th scope="col" style="width: 10%;">주문 일자</th>
                                            <th scope="col" style="width: 65%;">상품 정보</th>
                                            <th scope="col" style="width: 15%;">진행 상황</th>
                                        </tr>
                                    </thead>
    
                                    <tbody>
                                        <c:forEach var="orders" items="${list}">
                                        <tr>
                                            <th scope="row" style="color:rgb(138, 138, 146);">${orders.order_id}</th>
                                            <td style="color:rgb(138, 138, 146);"><fmt:formatDate value="${orders.order_date}" pattern="yyyy.MM.dd"/></td>
                                            <td> <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${orders.photo_sname}&photoType=${orders.photo_type}"  width="20%" style="float: left; margin-right: 10px;">
                                                <c:if test="${orders.total_amount==1}">
                                                    <strong style="font-size: 1.2em;">${orders.p_name}</strong> 
                                                </c:if>
                                                 <c:if test="${orders.total_amount>1}">
                                                <strong style="font-size: 1.2em;">${orders.p_name} 외 ${orders.total_amount-1}개</strong> 
                                                </c:if>
                                            </td>
                                            <c:if test="${orders.delivery_status eq '배송준비중' }">
	                                            <td style="border-right: white; text-align: center;">
	                                                <div>${orders.delivery_status}</div>
	                                                <div style="margin-top: 5px; font-size: 14px;">
	                                                    <a href="<%=application.getContextPath()%>/order/orders?order_id=${orders.order_id}" >주문 상세내역</a>
	                                                </div>
	                                            </td>
                                            </c:if>
                                             <c:if test="${orders.delivery_status eq '취소 중' }">
	                                            <td style="border-right: white; text-align: center;">
	                                                <div>${orders.delivery_status}</div>
	                                            </td>
                                            </c:if>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                            </table>
                             </c:if> 
                                <c:if test="${!empty list}">                         
	                                  <div class="d-flex text-center">
																			<div class="flex-grow-1" style="margin-top:20px;">
																		
																				<a class="btn btn-light btn-sm"
																					href="history?pageNo=1"><pre style="margin-bottom:0;"><<</pre></a>
																					
																				<c:if test="${pager.groupNo>1}">
																					<a class="btn btn-outline-info btn-sm"
																					href="history?pageNo=${pager.startPageNo-1}">이전</a>
																				</c:if>	
																				
																				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
																					<a class="btn 
																					<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
																					<c:if test='${pager.pageNo!=i}'>btn-light</c:if>
																					
																					btn-sm" href="history?pageNo=${i}">${i}</a>
																				</c:forEach>
																				
																				<c:if test="${pager.groupNo<pager.totalGroupNo}">
																					<a class="btn btn-outline-info btn-sm"
																					href="history?pageNo=${pager.endPageNo+1}">처음</a>
																				</c:if>		
																					
																				<a class="btn btn-light btn-sm"
																					href="history?pageNo=${pager.totalPageNo}"><pre style="margin-bottom:0;">>></pre></a>
																			</div>
																		</div> 
                                 	</c:if>
                        </div>
                    
                    <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list">   
                    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list"> </div>
                </div>
            </div>
        </div>
    </div>
</div>

 <%@ include file="/WEB-INF/views/common/footer.jsp"%>   
    
<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<% Date date = new Date();%>
<%SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");%>
<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/hungyun.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


function openZipSearch() {
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=delivery_address]').val(data.address);
			$('[name=delivery_address_detail]').val(data.buildingName);
		}
	}).open();
}

	


</script>

       
        <div class="header2"> 
	        <div class="inner">
	            <div style="padding-top: 5px;">홈  >  장바구니  > 주문하기 </div> 
	        </div>
     	</div>

        <div class="inner">
            <h3 style="font-weight: 1000; padding-top: 10px;">
                주문결제
            </h3>          
            <div style="text-align: right; color: rgb(134, 134, 138); line-height: 30px;">01 장바구니 > 
                <span style="color: rgb(255, 81, 82);">02 주문결제</span> > 03 결제완료
            </div>
        </div>

        <div class="inner">
            
                <div class="inner2" style="border: 1px solid #e9ecef; font-size: 0.8em"> 
                    <span class="history-subtitle">배송정보</span>
                    <form class="history_underborder" action="do_payment" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div style=" width: 60%; ">
                                <div class="form-group input-group">
                                    <span class="pay_form_size">받는 사람</span>  
                                    <input name="order_name" id="order_name" class="form-control" placeholder="받으시는 분의 성함을 입력하세요." type="text">
                                </div> <!-- form-group// -->
                            </div>
                            
                            <div style=" width: 60%;">
                                <div class="form-group input-group">
                                    <span class="pay_form_size">휴대전화</span>  
                                    <input name="order_phone" id="order_phone"  class="form-control" placeholder="휴대전화 번호를 입력하세요." type="text">
                                </div>
                            </div> 
                            
                            
                            <div style=" width: 60%;">
                                <div class="form-group input-group">
                                    <span class="pay_form_size">배송지 주소</span> 
<!--                                     <input class="form-control" placeholder="우편번호를 입력하세요." type="number">
 -->                                <input class="form-control" type="text" name="zip" id="zip" />
                                    
                                    <button type="button" class="btn btn-light" style="width:120px; margin-left: 20px;" onclick="openZipSearch()">검색</button>
                                    
<!--                                     <button type="button" style="width: 120px; margin-left: 20px;">검색</button>
 -->                                </div> <!-- form-group// -->
                                <div class="form-group input-group">
                                    <span class="pay_form_size"></span> 
                                    <input class="form-control" type="text" name="delivery_address" id="delivery_address" >
<!--                                     <input class="form-control" placeholder="주소를 입력하세요." type="text">
 -->                                </div> 
                                <div class="form-group input-group">
                                    <span class="pay_form_size"></span> 
                                    <input class="form-control" type="text" name="delivery_address_detail" id="delivery_address_detail" >
<!--                                     <input class="form-control" placeholder="상세주소를 입력하세요." type="text">
 -->                                </div>   
                            </div>

                            <div style=" width: 60%;">
                                <div class="form-group input-group">
                                    <span class="pay_form_size">배송 요청사항</span>  
                                    <input name="order_request" id="order_request" class="form-control" placeholder="배송 요청 사항을 입력하세요." type="text">
                                </div> <!-- form-group// -->
                            </div>
                    <span class="history-subtitle">주문상품</span>
                    <div class="history_underborder">
                        
                        <table class="table" style="font-size: 1.5em;">
                            <thead class="thead-light">
                                <tr>
                                    <th style=" text-align: left">업체발송  상품 <br> 
                                    <span style="color: rgb(255, 81, 82); font-size: 0.9em"><%=sf.format(date)%></span></th>
                                    <th></th>    
                                </tr>
                            </thead>
                           	<tbody>
                           	 	<c:set var="sum" value="0" />
                           	 	<c:set var="psum" value="0" />
                           		<c:forEach var="cart" items="${list}">
                                <tr>
                                    <th style="color: rgb(195, 195, 195); font-size: 0.8em"> 
                                    <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${cart.photo_sname}&photoType=${cart.photo_type}" width="20%" style="float: left; margin-right: 10px;">
                                    	<span style="color: rgb(134, 134, 138)">${cart.p_name}</span><br> 
                                        <span>사이즈: ${cart.p_size}</span><br> 
                                        <span>수량: ${cart.amount}</span></th>
                                        <c:set var="psum" value="${psum + (cart.p_price * cart.amount)}" />
                                    <td style="border-right: white; text-align: center; vertical-align: middle;">${cart.p_price * cart.amount}원</td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <span class="history-subtitle">최종 결제금액</span>
                    <div class="history_underborder">

                        <table class="table" style="font-size: 1.4em; text-align: left">
                            <thead class="thead-light" style="text-align: left; color: rgb(134, 134, 138);">
                            <tr>
                                <th style="width: 20%;">총 상품금액</th>
                                <td style="text-align: left;"> ${psum}원</td>
                                <input type="hidden" name="order_sprice" id="order_sprice" value="${psum}"/>
                            </tr>
                            <tr>
                                <th>배송비</th>
                                <td style="text-align: left;">+3,000원</td>
                            </tr>
                            <tr>
                                <th>쿠폰</th>
                                <td style="text-align: left;">0원</td>
                            </tr>
                            <tr>
                                <th>보유 현금</th>
                                <td style="text-align: left;">0원</td>
                            </tr>
                            <tr>
                                <th>총 결제금액</th>
                                <c:set var="sum" value="${psum+3000}" />
                                <td style="text-align: left; color: black; font-weight: 900;">${sum}원</td>
                                <input type="hidden" name="total_price" id="total_price" value="${sum}"/>
                            </tr>
                    
                            </thead>
                            
                        </table>

                    </div>

                    <span class="history-subtitle">결제방법</span>
                    <div class="history_underborder" style="font-size: 1.3em;">

                        <div style="color: #666;">

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input " type="radio" name="payment" id="exampleRadios1" value="무통장입금" checked>
                                    <label class="form-check-label " for="exampleRadios1">
                                        <i class="fas fa-coins"></i> 무통장입금
                                    </label>
                            </div>

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="신용카드">
                                    <label class="form-check-label" for="exampleRadios2">
                                        <i class="far fa-credit-card"></i> 신용카드                             
                                    </label>
                            </div>

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input" type="radio" name="payment" id="exampleRadios3" value="실시간 계좌이체" >
                                    <label class="form-check-label" for="exampleRadios3">
                                        <i class="fas fa-hand-holding-usd"></i> 실시간 계좌이체
                                    </label>
                            </div>
                        </div>

                    </div>
                </div> 
                <div class="text-center" style="text-align: center; font-size: 1.1em; padding: 15px;">
		           위 주문내용을 확인 하였으며, 결제에 동의합니다.
		       </div>  
		       <div class="form-group" style="display:flex; justify-content: center;">
		           <button type="submit" class="btn btn-primary btn-block" 
		           style="background-color : rgb(255, 81, 82); height: 60px ;font-size: 1.8em; border-color: rgb(255, 81, 82); width: 50%;">
		                   <strong>결제하기</strong> 
		           </button>   
		      </div>
			</form>
		       
        <br>
        <br>
       	<br>
        </div> <!-- form-group// -->    

   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/hungyun.css">
	<style type="text/css">
        *{
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        font-size: 0.9em;
        font-family: Noto Sans KR, sans-serif;
        font-weight: 800;
        } 
    </style>
     <!--주문결재 시작-->
       
        <div class="start"> 
            <div class="header2">
                <div class="inner" style="font-size: 0.75em; padding-top: 10px; color: rgb(134, 134, 138);">홈  >  장바구니  >  주문결제 </div>
            </div>
        </div>

        <div class="inner">
            <h4 style="font-weight: 1000; padding-top: 10px;">
                주문결제
            </h4>          
            <div style="text-align: right; font-size: 0.85em; color: rgb(134, 134, 138); line-height: 30px;">01 장바구니 > 
                <span style="color: rgb(255, 81, 82);">02 주문결제</span> > 03 결제완료
            </div>
        </div>

        <div class="inner">
            <div style="flex-direction: column-reverse;">
                <h5 class="inner2" style="border: 1px solid #e9ecef; "> 
                    <span style="font-weight: 900; line-height: 50px;">배송정보</span>
                    <form style= "color: rgb(195, 195, 195);border-top: 4px solid; padding : 5px; line-height: 20px;">
                        <div>
                            <div style=" width: 50%;">
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;font-size: 1.2em;";>받는 사람</span>  
                                    <input name="" class="form-control" placeholder="받으시는 분의 성함을 입력하세요." type="text">
                                </div> <!-- form-group// -->
                            </div>
                            <div style="width: 50%;">
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;font-size: 1.2em;">휴대전화</span>  
                                    <input name="" class="form-control" placeholder="휴대전화 번호를 입력하세요." type="number">
                                </div>
                            </div> 
                            <div style="width: 50%;">
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;font-size: 1.2em;">배송지 주소</span> 
                                    <input class="form-control" placeholder="우편번호를 입력하세요." type="number">
                                    <button type="button" class="btn btn-light" style="width: 120px; margin-left: 20px;">우편번호</button>
                                </div> <!-- form-group// -->
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;"></span> 
                                    <input class="form-control" placeholder="주소를 입력하세요." type="text">
                                </div> 
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;"></span> 
                                    <input class="form-control" placeholder="상세주소를 입력하세요." type="text">
                                </div>   
                            </div>

                            <div style=" width: 50%;">
                                <div class="form-group input-group">
                                    <span style="padding:5px; width: 20%;font-size: 1.2em;";>배송 요청사항</span>  
                                    <input name="" class="form-control" placeholder="배송 요청 사항을 입력하세요." type="text">
                                </div> <!-- form-group// -->
                            </div>
                        </div>
                    </form>

                    <span style="font-weight: 800; line-height: 50px;">주문상품</span>
                    <form style= "color: rgb(195, 195, 195); border-top: 4px solid; padding: 2px; line-height: 20px;">
                        
                        <table class="table" style="font-size: 1.4em;">
                            <thead class="thead-light" style="font-size: 0.8em;">
                                <tr>
                                    <th scope="col" style="width: 80%; font-size: 1em;">업체발송  상품 (플로트)<br> <stan style="color: rgb(255, 81, 82); line-height: 30px;">발송일: 3월 10일 수</stan></th>
                                    <th scope="col" style="width: 20%; text-align: center;"></th>    
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="line-height: 20px;">
                                    <th style="color: rgb(195, 195, 195)"> <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/photo2.jpg" width="20%" style="float: left; margin-right: 10px;">
                                        <span style="color: rgb(134, 134, 138)">플로트 스탠다드 민소매 티셔츠 옐로우블루</span> <br> <span>사이즈: L</span> <br> <span>수량: 1개</span> </th>
                                    <td style="border-right: white; text-align: center; vertical-align: middle;">14,000원</td>
                                </tr>
                            </tbody>
                        </table>
                
                    </form>

                    <span style="font-weight: 900; line-height: 50px;">최종 결제금액</span>
                    <form style= "color: rgb(195, 195, 195); border-top: 4px solid; line-height: 20px;">

                        <table class="table" style="font-size: 1.3em">
                            <thead class="thead-light" style="text-align: left; color: rgb(134, 134, 138);">
                            <tr>
                                <th scope="row" style="width: 20%;; font-size: 0.85em;">총 상품금액</th>
                                <td scope="row" style="width: 80%; text-align: left;font-size: 0.90em;">14,000원</td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 20%;; font-size: 0.85em;">배송비</th>
                                <td scope="row" style="width: 80%; text-align: left; font-size: 0.90em;">+3,000원</td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 20%;; font-size: 0.85em;">쿠폰</th>
                                <td scope="row" style="width: 80%; text-align: left; font-size: 0.90em;">0원</td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 20%;; font-size: 0.85em;">보유 현금</th>
                                <td scope="row" style="width: 80%; text-align: left;  font-size: 0.90em;">0원</td>
                            </tr>
                            <tr>
                                <th scope="row" style="width: 20%;; font-size: 0.85em; color: black;">총 결제금액</th>
                                <td scope="row" style="width: 80%; text-align: left; font-size: 0.90em; color: black; font-weight: 900;">17,000원</td>
                            </tr>
                    
                            </thead>
                            
                        </table>

                    </form>

                    <span style="font-weight: 900; line-height: 40px;">결제방법</span>
                    <form style= "color: rgb(195, 195, 195); border-top: 4px solid; padding : 10px; line-height: 20px; color: #666; font-size: 1.2em;">

                        <div>

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input " type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                    <label class="form-check-label " for="exampleRadios1">
                                        <i class="fas fa-coins"></i> 무통장입금</span>
                                    </label>
                            </div>

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                                    <label class="form-check-label" for="exampleRadios2">
                                        <i class="far fa-credit-card"></i> 신용카드 <span>                                
                                    </label>
                            </div>

                            <div class="form-check" style="padding: 7px;">
                                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" >
                                    <label class="form-check-label" for="exampleRadios3">
                                        <i class="fas fa-hand-holding-usd"></i> 실시간 계좌이체 <span></span>
                                    </label>
                            </div>
                        </div>

                    </form>
                </h5>    
            </div>
                    
            <div class="text-center" style="text-align: center; font-size: 1.15em; padding: 15px 0px;">
                위 주문내용을 확인 하였으며, 결제에 동의합니다.
            </div>  

            <div class="form-group" style="display:flex; justify-content: center;">
				
                <a type="button" href="<%=application.getContextPath()%>/index/payFinish" class="btn btn-primary btn-block" 
                style="background-color : rgb(255, 81, 82); height: 60px ;font-size: 1.8em; border-color: rgb(255, 81, 82); width: 60%;">
                        <strong>결제하기</strong> 
                </a>
                
            </div> <!-- form-group// -->    

            <br>
            <br>
            <br>
            <br>

        </div>
    

   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/askWrite.css">
    <title>Document></title>

<div class="header2"> 
    <div class="inner">
        <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 고객센터</div> 
    </div>
 </div>
     <div class="inner">
        <div class="info" style="height: 120px;">
            <picture style="float: left;">
                <img src="<%=application.getContextPath() %>/resources/img/profile-empty.svg" style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff; ;" >
            </picture>
                <div style="float: left; padding-left: 20px; padding-top: 15px;">
                    <strong>1조</strong> <i class="fas fa-cog"></i>  <div style="color: rgb(138, 138, 146); font-size: 0.9em;">abcd1234@naver.com</div>
                </div>
        </div>
        <br/>
            <div class="my"></div>
                <div class="row">
                    <div class="col-2">
                        <div class="list-group" id="list-tab" role="tablist">
		               				<a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a>
			                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/user/my" role="tab" aria-controls="home" >회원정보</a>
			                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/history" role="tab" aria-controls="profile">주문내역</a>
			                    <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/cart" role="tab" aria-controls="messages">장바구니</a>
			                    <a class="list-group-item list-group-item-action active"  href="<%=application.getContextPath()%>/boards/askList" role="tab" aria-controls="settings">고객센터</a>
                    		</div>
                    </div>
                    <div class="col-10">
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade" id="list-home" role="tabpanel" aria-labelledby="list-home-list"><br><h5><strong>나의 정보</strong></h5></div>
                            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list"></div>
 										        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list"> </div>
                                        <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                                            <h7 style="display: flex; justify-content: center;">문의하기</h7>
                                                <div class="qna">
                                                    <div class="qnaTop">
                                                        <div class="qnaBox" style="text-align: center;">
                                                            이용중에 생긴 불편한점이나 문의내용을 남겨주세요.<br/>
                                                            <p>가능한 빠른 시간내에 답변드리겠습니다.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--1:1문의 입력 폼-->
                              								  <form action="insertAskWrite" method="post">        
	                                                <!-- 1:1문의 입력 컨테이너 -->
	                                                <div class ="writeBox" style="display:flex; flex-direction: column; margin-bottom: 40px; height: 100%;">
                                                    
                                                    <div style="display: flex; flex-direction: column;">
                                                        <div style="display: flex; flex-direction: column;">
                                                           
                                                            <div class="form-group">
                                                            <label>문의 유형</label>
                                                            <select class="form-control" id="qa_category" name="qa_category">
                                                                <option value="상품 문의">상품 문의</option>
                                                                <option value="배송 문의">배송 문의</option>
                                                                <option value="주문/결제 문의">주문/결제 문의</option>
                                                              </select>
                                                              </div>
                                                        </div>
                                                        <div style="display: flex; flex-direction: column; padding-top: 20px;">
                                                            <label>문의 내용</label>
                                                            <textarea class="form-control" id="qa_content" name="qa_content" style="height:200px; overflow:hidden; resize: none;"  placeholder="내용을 최소 10자 이상 입력하세요."></textarea>
                                                        </div>
                                                        <div style="padding-top: 20px;">
                                                            <button type="submit" class="form-control" id="recipient-pic" style="border:1px #FF3357 solid; text-align:center; background-color: #FF3357; color:white">
                                                                1:1 문의하기 등록
                                                            </button>
                                                        </div>
                                                        </div>
                                                        </div>
                                                  </form>
                                         </div>       
                            </div>
                      </div>
                  </div>
                </div>
   
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>   
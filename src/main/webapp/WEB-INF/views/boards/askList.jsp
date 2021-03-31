<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

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
                        <div class="tab-pane fade"  id="list-home" role="tabpanel" aria-labelledby="list-home-list"><br><h5><strong>나의 정보</strong></h5> </div>
                        <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list"><div></div>  
						<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-cart-list"> </div>
                        <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                            <div>
                                <div class="div1" style="margin-bottom: 20px;">
                                <h5 class="qa">고객센터(1:1문의)</h5>
                                <a href="<%=application.getContextPath() %>/boards/askWrite" class="btn btn-secondary btn-sm" role="button" aria-pressed="true">문의하기</a>
                                </div>
                                
                                <div class="div2" style="padding-bottom: 200px;">
                                <c:forEach var="qna" items="${qna}">
                                    <div class="faq-content">
                                        <button class="question" id="que-1">
                                            <div>
                                                <span>상품 문의</span>
                                                <span class="wait">답변 대기</span>
                                            </div>
                                            <div>
                                                <span class="orderDate"><fmt:formatDate value="${qna.qa_date}"
							pattern="yyyy-MM-dd" /></span>
                                                <span id="que-1-toggle">∨</span>
                                            </div>
                                        </button>
                                        <div class="answer" id="ans-1">${qna.qa_content}
                                            <div class="btn-2">
                                                <a type="button" href="<%=application.getContextPath()%>/boards/editaskWrite" class="btn btn-outline-secondary btn-sm">수정</a>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
    
                                    <div class="faq-content">
                                        <button class="question" id="que-2">
                                            <div>
                                                <span>배송 문의</span>
                                                <span class="wait">답변 대기</span>
                                            </div>
                                            <div>
                                                <span class="orderDate">2021-03-12</span>
                                                <span id="que-1-toggle">∨</span>
                                            </div>
                                        </button>
                                        <div class="answer" id="ans-2">배송에 관해서 문의합니다.
                                            <div class="btn-2">
                                                <a type="button" href="<%=application.getContextPath()%>/boards/editaskWrite" class="btn btn-outline-secondary btn-sm">수정</a>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
    
    
                                    <div class="faq-content">
                                        <button class="question" id="que-3">
                                        <div>
                                            <span>주문/결제 문의</span>
                                            <span class="wait">답변 대기</span>
                                        </div>
                                        <div>
                                            <span class="orderDate">2021-03-12</span>
                                            <span id="que-3-toggle">∨</span>
                                        </div>
                                        </button>
                                        <div class="answer" id="ans-3">주문/결제 방법에 대해서 문의합니다.
                                            <div class="btn-2">
                                                <a type="button" href="<%=application.getContextPath()%>/boards/editaskWrite" class="btn btn-outline-secondary btn-sm">수정</a>
                                                <button type="button" class="btn btn-outline-secondary btn-sm">삭제</button>
                                            </div>
                                        </div>
                                    </div>
    
                                            <script>
                                                const items = document.querySelectorAll('.question');
                                                    function openCloseAnswer() {
                                                        const answerId = this.id.replace('que', 'ans');
    
                                                        if(document.getElementById(answerId).style.display === 'block') {
                                                        document.getElementById(answerId).style.display = 'none';
                                                        document.getElementById(this.id + '-toggle').textContent = '∨';
                                                        } else {
                                                        document.getElementById(answerId).style.display = 'block';
                                                        document.getElementById(this.id + '-toggle').textContent = '∧';
                                                        }
                                                    }
                                                items.forEach(item => item.addEventListener('click', openCloseAnswer));
                                            </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
     </div>
    
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>     

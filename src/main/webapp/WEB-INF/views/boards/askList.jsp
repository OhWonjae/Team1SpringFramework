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
            <img src="${pageContext.request.contextPath}/resources/img/profile-empty.svg" 
            style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff; ;" >
        </picture>
            <div style="float: left; padding-left: 20px; padding-top: 15px;">
                <strong>${user.user_name}</strong> <i class="fas fa-cog"></i>
                <div style="color: rgb(138, 138, 146); font-size: 0.9em;">${user.user_id}</div>
            </div>
    </div>
    <br/>
        <div class="my"></div>

            <div class="row">
                <div class="col-2">
                    <div class="list-group" id="list-tab" role="tablist">
                       <a class="list-group-item list-group-my" id="list-home-list" style="text-decoration:none; border-color: white; color: black; font-weight: bold; font-size:1.3em;" >마이페이지</a>
                       <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/user/my" role="tab" aria-controls="home" >회원정보</a>
                       <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/history?pageNo=1" role="tab" aria-controls="profile">주문내역</a>
                       <a class="list-group-item list-group-item-action" href="<%=application.getContextPath()%>/order/cart?pageNo=1" role="tab" aria-controls="messages">장바구니</a>
                       <a class="list-group-item list-group-item-action active"  href="<%=application.getContextPath()%>/boards/askList?pageNo=1" role="tab" aria-controls="settings">고객센터</a>
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
                                <c:if test="${empty qna}">
                               <div class="cart-content">
                                <div class="container" style="margin-bottom: 20px;">
                                               <div class="div2">
                                                  <div class="nolist" style= "padding:50px;text-align: center";>
                                                      <i class="far fa-sticky-note" style="color:gray;font-size:80px;"></i>
                                                      <div>
                                                      작성한 내역이 없습니다.
                                                      </div>
                                                  </div>
                                              </div>
                                             </div>
                                            </div>
                                      </c:if>
                                      <c:if test="${!empty qna}">
                                <c:forEach var="qna" items="${qna}">
                                    <div class="faq-content">
                                        <button class="question" id="que-${qna.qa_id}">
                                            <div>
                                                   <span>${qna.qa_category}</span>
                                                <span class="wait">답변 대기</span>
                                            </div>
                                            <div>
                                                <span class="orderDate"><fmt:formatDate value="${qna.qa_date}"
                     pattern="yyyy-MM-dd" /></span>
                                                <span id="que-1-toggle">∨</span>
                                            </div>
                                        </button>
                                        <div class="answer" id="ans-${qna.qa_id}">${qna.qa_content}
                                        
                                            <div class="btn-2">
                                                <a type="button" href="<%=application.getContextPath()%>/boards/askUpdate?qa_id=${qna.qa_id}" class="btn btn-outline-secondary btn-sm">수정</a>
                                                <a type="button" href="<%=application.getContextPath()%>/boards/delete?qa_id=${qna.qa_id}" class="btn btn-outline-secondary btn-sm">삭제</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                                            
	                                  <div class="d-flex text-center">
																			<div class="flex-grow-1" style="margin-top:20px;">
																		
																				<a class="btn btn-light btn-sm"
																					href="askList?pageNo=1"><pre style="margin-bottom:0;"><<</pre></a>
																					
																				<c:if test="${pager.groupNo>1}">
																					<a class="btn btn-outline-info btn-sm"
																					href="askList?pageNo=${pager.startPageNo-1}">이전</a>
																				</c:if>	
																				
																				<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
																					<a class="btn 
																					<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
																					<c:if test='${pager.pageNo!=i}'>btn-light</c:if>
																					
																					btn-sm" href="askList?pageNo=${i}">${i}</a>
																				</c:forEach>
																				
																				<c:if test="${pager.groupNo<pager.totalGroupNo}">
																					<a class="btn btn-outline-info btn-sm"
																					href="askList?pageNo=${pager.endPageNo+1}">처음</a>
																				</c:if>		
																					
																				<a class="btn btn-light btn-sm"
																					href="askList?pageNo=${pager.totalPageNo}"><pre style="margin-bottom:0;">>></pre></a>
																			</div>
																		</div> 
                                 
							                              
                                    </c:if>
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
      	<hr>
 <%@ include file="/WEB-INF/views/common/footer.jsp"%>     
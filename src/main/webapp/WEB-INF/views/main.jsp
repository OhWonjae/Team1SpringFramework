<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

   <section>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="<%=application.getContextPath() %>/resources/img/banner1.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="<%=application.getContextPath() %>/resources/img/banner2.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="<%=application.getContextPath() %>/resources/img/banner3.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
    </section>
    <section>
      <div class="inner">
        <div class="main-new">
          <div class="main-title-new">
            <div class="main-title">신규</div>
            <button type="button" onclick="location.href='<%=application.getContextPath()%>/product/new'" class="btn btn-outline-secondary btn-sm">더보기></button>
          </div>
          <ul class="new-list">
            
            <!--신규 상품 리스트 출력 -->
            	<c:forEach var="product" items="${newlist}">
            	<li class="new-goods" style="margin-left: 0;" onclick="location.href='product/detail?pid=${product.p_id}'">
				 	
      					<img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" width="200px" style="cursor: pointer;">
      					<div class="goods-title">${product.p_name}</div>
      					<div class="goods-price">${product.p_price}원</div>
      					 <!--별점-->
                         <c:forEach var="i" begin="1" end="${product.p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${product.p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
                		<a style="color: silver;"> (${product.p_rate})</a>
    				
                </li>
				</c:forEach>
            
            
            <i class="fas fa-chevron-circle-right"></i>
          </ul>
        </div>
      </div>
    </section>
    <hr/>
    <section>
      <div class="inner">
        <div class="main-new">
          <div class="main-title-new">
            <div class="main-title">추천</div>
            <button type="button" onclick="location.href='<%=application.getContextPath()%>/product/rec'" class="btn btn-outline-secondary btn-sm">더보기></button>
          </div>
          <ul class="new-list">
             	<!--추천 상품 리스트 출력 -->
            	<c:forEach var="product" items="${reclist}">
            	<li class="new-goods" style="margin-left: 0;" onclick="location.href='product/detail?pid=${product.p_id}'" >
				 	
      					<img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" width="200px" style="cursor: pointer;">
      					<div class="goods-title">${product.p_name}</div>
      					<div class="goods-price">${product.p_price}원</div>
      					
     					  <!--별점-->
                         <c:forEach var="i" begin="1" end="${product.p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${product.p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${product.p_rate})</a>
                </li>
				</c:forEach>
            <i class="fas fa-chevron-circle-right"></i>
          </ul>
        </div>
      </div>
    </section>
    <hr/>
    <section>
      <div class="inner">
        <div class="main-new">
          <div class="main-title-new">
            <div class="main-title">랭킹</div>
            <button type="button" onclick="location.href='<%=application.getContextPath()%>/product/rank'" class="btn btn-outline-secondary btn-sm">더보기></button>
          </div>
          <div class="container rank-container">
            <div class="row">
              <div class="col">
                <div class="test-container">
                  <i class="fas fa-crown">
                    <div class="rank-text">1</div>
                  </i>
                    <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[0].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[0].photolist[0].photo_sname}&photoType=${ranklist[0].photolist[0].photo_type}" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[0].p_name}</div>
                        <div class="rank-price">${ranklist[0].p_price}원</div>
                        <div class="rate">
                           <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[0].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[0].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[0].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
                  
                    <div class="unrank-text">4</div>
                  
                    <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[3].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[3].photolist[0].photo_sname}&photoType=${ranklist[3].photolist[0].photo_type}" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[3].p_name}</div>
                        <div class="rank-price">${ranklist[3].p_price}원</div>
                         <div class="rate">
                           <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[3].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[3].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[3].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="w-100 mb-3"></div>
              <div class="col">
                <div class="test-container">
                  <i class="fas fa-crown" style="color:#868e96 ;">
                    <div class="rank-text">2</div>
                  </i>
                    <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[1].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[1].photolist[0].photo_sname}&photoType=${ranklist[1].photolist[0].photo_type}" alt="rank3" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[1].p_name}</div>
                        <div class="rank-price">${ranklist[1].p_price}원</div>
                         <div class="rate">
                            <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[1].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[1].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[1].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
                  
                    <div class="unrank-text">5</div>
                  
                   <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[4].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[4].photolist[0].photo_sname}&photoType=${ranklist[4].photolist[0].photo_type}" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[4].p_name}</div>
                        <div class="rank-price">${ranklist[4].p_price}원</div>
                        <div class="rate">
                            <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[4].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[4].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[4].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="w-100 mb-3"></div>
              <div class="col">
                <div class="test-container">
                  <i class="fas fa-crown" style="color:#0ca678">
                    <div class="rank-text">3</div>
                  </i>
                    <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[2].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[2].photolist[0].photo_sname}&photoType=${ranklist[2].photolist[0].photo_type}" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[2].p_name}</div>
                        <div class="rank-price">${ranklist[2].p_price}원</div>
                        <div class="rate">
                           <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[2].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[2].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[2].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
               
                    <div class="unrank-text">6</div>
                  
                    <a href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[5].p_id}">
                      <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[5].photolist[0].photo_sname}&photoType=${ranklist[5].photolist[0].photo_type}" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">${ranklist[5].p_name}</div>
                        <div class="rank-price">${ranklist[5].p_price}원</div>
                     <div class="rate">
                           <!--별점-->
                         <c:forEach var="i" begin="1" end="${ranklist[5].p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${ranklist[5].p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
     					
                		<a style="color: silver;"> (${ranklist[5].p_rate})</a>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="review-container">
        <div class="inner">
          <div class="main-new">
            <div class="main-title-new">
              <div class="main-title">베스트 리뷰</div>
            </div>
            <ul class="class-list">
            <!--베스트 리뷰 상품 리스트 출력 -->
            	<c:forEach var="product" items="${bestreviewlist}">
            	<li class="class-card">
                 <a href="<%=application.getContextPath()%>/product/detail?pid=${product.p_id}" >
                   <img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" alt="Review1" class="class-image" />
                  <div class="class-container">
                    <div class="class-box">
                      <div class="class-type">사이즈 L</div>
                      <div class="class-format">
                        <!--별점-->
                         <c:forEach var="i" begin="1" end="${product.p_rate}">
                         <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
                         </c:forEach>
                         <c:forEach var="i" begin="${product.p_rate+1}" end="5">
                         <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
                         </c:forEach>
     					  
                        <a style="color: silver;">(${product.p_rate})</a>
                      </div>
                    </div>
                    <div class="class-desc">
                      <div class="class-title">플로트 스탠다드 골지 티셔츠 그린</div>
                      <div class="class-detail">리뷰: 리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</div>
                    </div>
                  </div>
                </a>
              </li>
            	
            	</c:forEach>
            </ul>
          </div>
        </div>
      </div>
    </section>
    
    <%@ include file="/WEB-INF/views/common/footer.jsp"%>
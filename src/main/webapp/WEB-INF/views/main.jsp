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
            	<li class="new-goods" style="margin-left: 0;" onclick="location.href='product/detail?pid=${product.p_id}'" style="cursor: pointer;">
				 	
      					<img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" width="200px">
      					<div class="goods-title">${product.p_name}</div>
      					<div class="goods-price">${product.p_price}원</div>
      					<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star-half-alt" style="color: #ff3357; font-size: 8px;"></i>
      					<a style="color: silver;"> (2)</a>
    				
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
            	<li class="new-goods" style="margin-left: 0;" onclick="location.href='product/detail?pid=${product.p_id}'" style="cursor: pointer;">
				 	
      					<img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" width="200px">
      					<div class="goods-title">${product.p_name}</div>
      					<div class="goods-price">${product.p_price}원</div>
      					<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                		<i class="fas fa-star-half-alt" style="color: #ff3357; font-size: 8px;"></i>
      					<a style="color: silver;"> (2)</a>
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
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/rec5.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
                  
                    <div class="unrank-text">4</div>
                  
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/new5.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
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
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/new2.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
                  
                    <div class="unrank-text">5</div>
                  
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/rec3.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
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
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/rec2.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
                        </div>
                    </a>
                 </div>
                </div>
              </div>
              <div class="col">
                <div class="test-container">
               
                    <div class="unrank-text">6</div>
                  
                    <a href="<%=application.getContextPath()%>/product/detail">
                      <img src="<%=application.getContextPath() %>/resources/img/new1.jpg" alt="rank1" class="rank-image"/>
                      <div class="rank-info">
                        <div class="rank-title">플로트 스탠다드 골지 티셔츠 그린</div>
                        <div class="rank-price">19000원</div>
                        <div class="rate">
                          <label for="star5" title="text">5 stars</label>
                          <label for="star4" title="text">4 stars</label>
                          <label for="star3" title="text">3 stars</label>
                          <label for="star2" title="text">2 stars</label>
                          <label for="star1" title="text">1 star</label>
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
                        <i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                        <i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                        <i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                        <i class="fas fa-star" style="color: #ff3357; font-size: 8px;"></i> 
                        <i class="fas fa-star-half-alt" style="color: #ff3357; font-size: 8px;"></i>
                        <a style="color: silver;"> (2)</a>
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
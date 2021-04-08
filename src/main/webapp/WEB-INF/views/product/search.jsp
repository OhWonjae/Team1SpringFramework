<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <%@ include file="/WEB-INF/views/common/header.jsp"%>   
   <%@ include file="/WEB-INF/views/common/menu.jsp"%>
	<head>
		<title>Spring</title>

	</head>
	<style>
	.center{
        display: flex;
    	flex-direction: row;
   		 flex-wrap: wrap;
   		 justify-content: flex-start;
   		 padding:0px 20px;
   		
   	  }
      .flex-items{
      margin: 0px 5px;
　	}

	</style>
     <!--검색페이지 시작-->

    <!--회색 바-->
    <div class="header2"> 
        <div class="inner">
            <div  style="font-size: 0.85em; padding-top: 5px;">홈 > 검색</div> 
        </div>
     </div>

    <div class="inner">
        <!--검색페이지 컨테이너-->
        <div class="container-fluid ">
            <div class="row">
                <!--검색옵션 컨테이너-->
                <div class="col-md-2  " >
                    <!--검색옵션 텍스트-->
                    <h5 class="font-weight-bold strong" style="margin: 15% 0; ">검색옵션</h5>
                    <!--카테고리 드랍다운-->
                    <div class="dropdown" >
                        <h5 class="nav-link2 dropdown-toggle border-bottom"  style="color: gray; padding-top: 5%; padding-bottom: 10%;" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            카테고리
                        </h5>
                        <div class="collapse" id="collapseExample">
                            <button type="button" class="btn btn-link nav-link2"  style="display:block; padding: 5% 10%" onclick= "location.href='search?phgeNo=1&category=전체&searchword=${word}'"><h6>전체</h6></button>
                                    <!--세부 카테고리 드랍다운-->
                            <div class="dropdown" >
                                <h6  class="nav-link2 dropdown-toggle" style="padding: 5% 10%" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
                                        의류/악세서리
                                </h6>
                                <div class="collapse" id="collapseExample2">
                                    <button type="button" class="btn btn-link nav-link2"  style="display:block; padding: 5% 20%" onclick= "location.href='search?pageNo=1&category=티셔츠&searchword=${word}'"><h6>티셔츠</h6></button>
                                    <button type="button" class="btn btn-linknav-link2"  style="display:block; padding: 5% 20%" onclick= "location.href='search?pageNo=1&category=후드티&searchword=${word}'"><h6>후드티</h6></button>
                                    <button type="button" class="btn btn-link nav-link2"  style="display:block; padding: 5% 20%" onclick= "location.href='search?pageNo=1&category=패딩/코트&searchword=${word}'"><h6>패딩/코트</h6></button>
                                    <button type="button" class="btn btn-link nav-link2"  style="display:block; padding: 5% 20%" onclick= "location.href='search?pageNo=1&category=원피스&searchword=${word}'"><h6>원피스</h6></button>
                                    <button type="button" class="btn btn-link nav-link2"  style="display:block; padding: 5% 20%" onclick= "location.href='search?pageNo=1&category=올인원&searchword=${word}'"><h6>올인원</h6></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--검색결과 컨테이너--> 
                <div class="col-md-10 border" style="padding: 0 0;" >
                    <!--검색결과 설명--> 
                    <div class="border-bottom" style="font:bold; margin: 1%;">
                        <h5><strong>${resultname}</strong></h5>
                    </div>
                    <!--상품 개수--> 
                    <div class="border-bottom" style="padding:1% 0; margin: 1%; color: gray;">
                        <h6><strong>${listcount}</strong>개의 상품</h6>
                    </div>
                    <div class="center">  
			            	<!--신규 상품 리스트 출력 -->
			            	<c:forEach var="product" items="${list}">
							 <div class="flex-items"> 
							 	<figure onclick="location.href='detail?pid=${product.p_id}'" style="cursor: pointer;">
			      					<img src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}" width="200px">
			      					<figcaption>${product.p_name}</figcaption>
			      					<figcaption>
			      					  <!--별점-->
			                          <c:forEach var="i" begin="1" end="${product.p_rate}">
			                          <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="10px">
			                          </c:forEach>
			                          <c:forEach var="i" begin="${product.p_rate+1}" end="5">
			                          <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
			                          </c:forEach>
			      					  (${product.p_rate})
			      					</figcaption>
			      					<figcaption>${product.p_price}원</figcaption>
			    				</figure>
			                </div>
							</c:forEach>
			            </div>      
			            
			              <div class="d-flex text-center" style="margin:30px 0">
					<div class="flex-grow-1">
				
						<!-- 6 7 8 9 10 -->
						<a class="btn btn-light btn-sm"
							href="search?pageNo=1&category=${category}&searchword=${word}"><pre style="margin-bottom:0;"><<</pre></a>
							
						<c:if test="${pager.groupNo>1}">
							<a class="btn btn-outline-info btn-sm"
							href="search?pageNo=${pager.startPageNo-1}&category=${category}&searchword=${word}">이전</a>
						</c:if>	
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<a class="btn 
							<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
							<c:if test='${pager.pageNo!=i}'>btn-light</c:if>
							
							btn-sm" href="search?pageNo=${i}&category=${category}&searchword=${word}">${i}</a>
						</c:forEach>
						
						<c:if test="${pager.groupNo<pager.totalGroupNo}">
							<a class="btn btn-outline-info btn-sm"
							href="search?pageNo=${pager.endPageNo+1}&category=${category}&searchword=${word}">다음</a>
						</c:if>		
							
						<a class="btn btn-light btn-sm"
							href="search?pageNo=${pager.totalPageNo}&category=${category}&searchword=${word}">>></pre></a>
					</div>
		</div>   
                       
                    </div>
                    
                   
                    
                </div>
            </div>
        </div>
   

   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
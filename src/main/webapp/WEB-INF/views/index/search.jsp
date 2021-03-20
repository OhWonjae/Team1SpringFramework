<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <%@ include file="/WEB-INF/views/common/header.jsp"%>   
	<head>
		<title>Spring</title>

	</head>
	
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
                            <div class="nav-link2 active"  style="padding: 5% 10%" href="#"><h6>전체</h6></div>
                            <!--세부 카테고리 드랍다운-->
                            <div class="dropdown" >
                                <h6  class="nav-link2 dropdown-toggle" style="padding: 5% 10%" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
                                        의류/악세서리
                                </h6>
                                <div class="collapse" id="collapseExample2">
                                    <h6 class="nav-link2"  style="display:block; padding: 5% 20%" href="#">전체</h6>
                                    <h6 class="nav-link2"  style="display:block; padding: 5% 20%" href="#">티셔츠</h6>
                                    <h6 class="nav-link2"  style="display:block; padding: 5% 20%" href="#">후드티</h6>
                                    <h6 class="nav-link2"  style="display:block; padding: 5% 20%" href="#">패딩/코트</h6>
                                    <h6 class="nav-link2"  style="display:block; padding: 5% 20%" href="#">원피스</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--검색결과 컨테이너--> 
                <div class="col-md-10 border" style="padding: 0 0;" >
                    <!--검색결과 설명--> 
                    <div class="border-bottom" style="font:bold; margin: 1%;">
                        <h5><strong>'후드'</strong>에 대한 검색결과</h5>
                    </div>
                    <!--상품 개수--> 
                    <div class="border-bottom" style="padding:1% 0; margin: 1%; color: gray;">
                        <h6><strong>38</strong>개의 상품</h6>
                    </div>
                    <div class="container" id="productlist">
	                  
                        <!--상품 목록행 1--> 
              			<div class="row">
                            <!--상품1--> 
                            <div class="col-3" OnClick="location.href ='detail.html'" style="cursor:pointer; margin: 0px; text-align: center; padding: 5px 5px;  ">
                                <figure class="figure " style="text-align: left; margin:0 0; height: 90%; width: 90%; ">
                                    <!--상품 사진-->
                                    <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/플로트 콤비 후드 옐로우핫핑크_29,000원.PNG" width="100%" >
                                    <!--상품명-->
                                    <figcaption class="figure-caption ">플로트 콤비 후드 옐로우핫핑크</figcaption>
                                    <!--상품 가격-->
                                    <figcaption class="figure-caption font-weight-bold"  >29,000원</figcaption>
                                    <!--상품 별점-->
                                    <figcaption class="figure-caption  ">
                                        <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px" /><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px">
                                        (10)
                                    </figcaption>
                                    
                                </figure>
                            </div>
                            <!--상품2--> 
                            <div class="col-3  "OnClick="location.href ='http://URL주소'" style="cursor:pointer;margin: 0px; text-align: center; padding: 5px 5px; ">
                                <figure class="figure " style="text-align: left;margin:0 0; height: 90%; width: 90%; ">
                                    <!--상품 사진-->
                                    <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/플로트 스탠다드 후드 핑크_26,000원.PNG" width="100%" >
                                    <!--상품명-->
                                    <figcaption class="figure-caption ">플로트 스탠다드 후드 핑크</figcaption>
                                    <!--상품 가격-->
                                    <figcaption class="figure-caption font-weight-bold">26,000원</figcaption>
                                    <!--상품 별점-->
                                    <figcaption class="figure-caption  ">
                                      <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px" /><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px">   (10)
                                    </figcaption>
                                    
                                </figure>
                            </div>
                            <!--상품3--> 
                            <div class="col-3  " OnClick="location.href ='http://URL주소'" style="cursor:pointer;margin: 0px; text-align: center; padding: 5px 5px; ">
                                <figure class="figure " style="text-align: left; margin:0 0; height: 90%; width: 90%; ">
                                    <!--상품 사진-->
                                    <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/이츠독 플러피 기모 후드 점퍼_26,000~31,000원.PNG" width="100%" >
                                    <!--상품명-->
                                    <figcaption class="figure-caption ">이츠독 플러피 후드 점퍼</figcaption>
                                    <!--상품 가격-->
                                    <figcaption class="figure-caption font-weight-bold">26,000원 ~31,000원</figcaption>
                                    <!--상품 별점-->
                                    <figcaption class="figure-caption  ">
                                    <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px" /><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px">    (10)
                                    </figcaption>
                                    
                                </figure>
                            </div>
                            <!--상품4--> 
                            <div class="col-3  " OnClick="location.href ='http://URL주소'" style="cursor:pointer;margin: 0px; text-align: center; padding: 5px 5px; ">
                                <figure class="figure " style="text-align: left; margin:0 0; height: 90%; width: 90%; ">
                                    <!--상품 사진-->
                                    <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/이츠독 버디 슈퍼 보아 후드티 블루_32,000원 ~ 37,000원.PNG" width="100%" >
                                    <!--상품명-->
                                    <figcaption class="figure-caption ">이츠독 버디 슈퍼 후드티</figcaption>
                                    <!--상품 가격-->
                                    <figcaption class="figure-caption font-weight-bold">32,000원 ~ 37,000원</figcaption>
                                    <!--상품 별점-->
                                    <figcaption class="figure-caption  ">
                                     <img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px" /><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG" height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px"><img src="<%=pageContext.getServletContext().getContextPath() %>/resources/img/Star.PNG"height="10px">   (10)
                                    </figcaption>
                                    
                                </figure>
                            </div> 
                     
                        </div>
  						       <script>
	                    	<!--상품 목록 컨테이너 출력-->
	                    	var rowhtml = $("#productlist").html(); 
	                    	console.log(rowhtml);
	                    	 for(var i=0; i<4; i++){
	                    		$("#productlist").append(rowhtml);
	                    	} 
	                    	 $("#productlist").append("</div>");
	                   	    </script>
                      


                        
                        <!--상품 목록 순서--> 
                        <div class="container d-flex justify-content-center " style="margin-top:10%; width:100%; height: 70px; "> 
                            <nav>
                                <ul class="navbar-nav navbar-expand-lg " style="height:50% ;" >
                                    <li class="nav-item">
                                        <button class="nav-link3"  href="#">&lt;</button>
                                    </li>
                                    <li class="nav-item">
                                        <button class="nav-link3 active"  style="background-color:  gainsboro;" href="#">1</button>
                                    </li>
                                    <li class="nav-item">
                                        <button class="nav-link3"  href="#">2</button>
                                    </li>
                                    <li class="nav-item">
                                        <button class="nav-link3"  href="#">&gt;</button>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    
                   
                    
                </div>
            </div>
        </div>
    </div>

   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
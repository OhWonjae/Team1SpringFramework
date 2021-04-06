<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/bootstrap-4.6.0/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/bootstrap-4.6.0/js/bootstrap.bundle.min.js"></script>
		<script src="<%=pageContext.getServletContext().getContextPath() %>/resources/bootstrap-4.6.0/js/bootstrap.min.js"></script>
    	<script src="https://kit.fontawesome.com/f1def33959.js" crossorigin="anonymous"></script>
    	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

   	<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/style.css">
    <link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/cart.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">


</head>


<body>
    <header>
        <div class="inner">
            <div class="head-container">
                <div class="head-brand">
                <a href="<%=application.getContextPath()%>/main">
                   <img src="<%=application.getContextPath() %>/resources/img/logo7.PNG" alt="logo">
                 </a>
                    
                </div>
                
               <div class="head-searchbar">
               		<!-- 검색창 -> form에서 고정 파라미터 히든으로 지정한 후 submit시 GetURL 호출 -->
                  <form class="formStyle" method="get" action="<%=application.getContextPath() %>/product/search?pageNo=1&category=전체&searchword=${searchword}" style="display:flex; width:100%">
                     <input type="hidden" name="pageNo" value="1"/>
                     <input type="hidden" name="category" value="전체"/>
                    <input type="text" placeholder="검색어를 입력하세요." class="searchTab" name="searchword">
                    <button class="searchButton" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                  </form>
                </div>
                <div class="header-sideBar">
               <!--<sec:authorize access="isAnonymous()">
					<a class="btn btn-success btn-sm" href="<%=application.getContextPath()%>/user/loginForm">
						로그인
					</a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<span class="mr-2">로그인Email: <sec:authentication property="name"/></span> 
					<form method="post" class="d-inline-block" action="<%=application.getContextPath()%>/logout">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button class="btn btn-success btn-sm" >로그아웃</button>
					</form>
				</sec:authorize>-->
		<!--  새로 추가한 행 끝 -->
                    <div class="mypage">
                    	
	                     <sec:authorize access="isAnonymous()">
							<a href="<%=application.getContextPath()%>/loginForm">
	                        	<i class="fas fa-user mypage-icon"></i>
	                        	<span class="mypage-text">MY</span>
	                      	</a>
						</sec:authorize>
					
						<sec:authorize access="isAuthenticated()">
							<a href="<%=application.getContextPath()%>/user/my">
	                        	<i class="fas fa-user mypage-icon"></i>
	                        	<span class="mypage-text">MY</span>
	                      	</a>
						</sec:authorize>
                    </div>
                    <div class="cart">
                      <a href="<%=application.getContextPath()%>/order/cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-text">장바구니</span>
                      </a>
                    </div>
                    <div>
 	<c:if test="${connStatus == '성공' }">
		<div class="alert alert-primary">
		DB연결 성공
		</div>
	</c:if>
	<c:if test="${connStatus == '실패' }">
		<div class="alert alert-danger">
		DB연결 실패
		</div>
	</c:if> 
	</div>
                </div>
            </div>
        </div>
    </header>
   
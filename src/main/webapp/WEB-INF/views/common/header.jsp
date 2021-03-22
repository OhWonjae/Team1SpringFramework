<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
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
                  <form class="formStyle" method="get" action="search" style="display:flex; width:100%">
                    <input type="text" placeholder="검색어를 입력하세요." class="searchTab">
                    <button class="searchButton" type="submit" onclick="location.href='<%=application.getContextPath()%>/product/search'">
                        <i class="fas fa-search"></i>
                    </button>
                  </form>
                </div>
                <div class="header-sideBar">
                    <div class="mypage">
                      <a href="<%=application.getContextPath()%>/user/login">
                        <i class="fas fa-user mypage-icon"></i>
                        <span class="mypage-text">MY</span>
                      </a>
                    </div>
                    <div class="cart">
                      <a href="<%=application.getContextPath()%>/order/cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-text">장바구니</span>
                      </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
   
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
                <a href="main.html">
                   <img src="<%=application.getContextPath() %>/resources/img/logo7.PNG" alt="logo">
                 </a>
                    
                </div>
                <div class="head-searchbar">
                    <input type="text" placeholder="검색어를 입력하세요." class="searchTab">
                    <button class="searchButton">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <div class="header-sideBar">
                    <div class="mypage">
                      <a href="...">
                        <i class="fas fa-user mypage-icon"></i>
                        <span class="mypage-text">MY</span>
                      </a>
                    </div>
                    <div class="cart">
                      <a href="<%=application.getContextPath()%>/index/cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-text">장바구니</span>
                      </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="main">
        <div class="main-container">
            <div class="nav-inner">
                <nav class="navbar navbar-expand-lg navbar-light bg-white" style="padding: .5rem 0;">
                    <div class="container-fluid" style="padding-left: 0;">
                      <ul class="navbar-nav">
                        <li class="nav-item dropdown" style="margin-left: 0;">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="category">카테고리</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <a class="dropdown-item" href="#">티셔츠</a>
                              <a class="dropdown-item" href="#">후드티</a>
                              <a class="dropdown-item" href="#">패딩/코트</a>
                              <a class="dropdown-item" href="#">원피스</a>
                              <a class="dropdown-item" href="#">올인원</a>
                             
                          </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">신규</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">랭킹</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">추천</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">고객센터</a>
                        </li>
                      </ul>
                    </div>
                  </nav>
            </div>
        </div>
    </section>
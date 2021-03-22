<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                              <a class="dropdown-item" href="<%=application.getContextPath()%>/product/search">티셔츠</a>
                              <a class="dropdown-item" href="<%=application.getContextPath()%>/product/search">후드티</a>
                              <a class="dropdown-item" href="<%=application.getContextPath()%>/product/search">패딩/코트</a>
                              <a class="dropdown-item" href="<%=application.getContextPath()%>/product/search">원피스</a>
                              <a class="dropdown-item" href="<%=application.getContextPath()%>/product/search">올인원</a>
                             
                          </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="<%=application.getContextPath()%>/product/new">신규</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="<%=application.getContextPath()%>/product/rank">랭킹</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="<%=application.getContextPath()%>/product/rec">추천</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="<%=application.getContextPath()%>/user/my">고객센터</a>
                        </li>
                      </ul>
                    </div>
                  </nav>
            </div>
        </div>
    </section>
<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>

<style>
.swiper-container {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
	.
	left
}
</style>

<script>
$(function(){
    //initialize swiper when document ready
    var mySwiper = new Swiper('.swiper-container1', {
        // Optional parameters 
        direction: 'horizontal', // 방향
        slidesPerView: 5, // 슬라이드를 한번에 3개를 보여준다
        slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        spaceBetween: 50, // 슬라이드간 padding 값 30px 씩 떨어뜨려줌
        
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : false,

        loop: false, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

        // If we need pagination 
        pagination: {
            el: '.swiper-pagination',
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
        },
        
        // Navigation arrows 
        navigation: {
            nextEl: '.right',
            prevEl: '.left',
        },
        
        // 반응형
        breakpoints: {
            1280: {
                slidesPerView: 3,
                slidesPerGroup: 3,
            },
            720: {
                slidesPerView: 1,
                slidesPerGroup: 1,
            },
        }
    })
});

$(function(){
    //initialize swiper when document ready
    var mySwiper = new Swiper('.swiper-container2', {
        // Optional parameters 
        direction: 'horizontal', // 방향
        slidesPerView: 5, // 슬라이드를 한번에 3개를 보여준다
        slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        spaceBetween: 50, // 슬라이드간 padding 값 30px 씩 떨어뜨려줌
        
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : false,

        loop: false, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

        // If we need pagination 
        pagination: {
            el: '.swiper-pagination',
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
        },
        
        // Navigation arrows 
        navigation: {
            nextEl: '.right2',
            prevEl: '.left2',
        },
        
        // 반응형
        breakpoints: {
            1280: {
                slidesPerView: 3,
                slidesPerGroup: 3,
            },
            720: {
                slidesPerView: 1,
                slidesPerGroup: 1,
            },
        }
    })
});
</script>

<section>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="<%=application.getContextPath() %>/resources/img/banner1.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="<%=application.getContextPath() %>/resources/img/banner2.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img
					src="<%=application.getContextPath() %>/resources/img/banner3.jpg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</section>
<section>
	<div class="inner">
		<div class="main-new">
			<div class="main-title-new">
				<div class="main-title">신규</div>
				<button type="button"
					onclick="location.href='<%=application.getContextPath()%>/product/new'"
					class="btn btn-outline-secondary btn-sm">더보기></button>
			</div>




			<ul class="new-list">
			<i class="fas fa-chevron-circle-left left" style="display: none"></i> 
				<!-- Slider main container -->
				<div class="swiper-container swiper-container1">

					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!--신규 상품 리스트 출력 -->
						<c:forEach var="product" items="${newlist}">
							<div class="swiper-slide">
								<li class="new-goods" style="margin-left: 0;"
									onclick="location.href='product/detail?pid=${product.p_id}'">
									<img
									src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}"
									width="200px" style="cursor: pointer;">
									<div class="goods-title">${product.p_name}</div>
									<div class="goods-price">${product.p_price}원</div> <!--별점--> <c:forEach
										var="i" begin="1" end="${product.p_rate}">
										<img
											src="${pageContext.request.contextPath}/resources/img/Star.PNG"
											height="10px">
									</c:forEach> <c:forEach var="i" begin="${product.p_rate+1}" end="5">
										<img
											src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
											height="10px">
									</c:forEach> <a style="color: silver;"> (${product.p_rate})</a>

								</li>
							</div>
						</c:forEach>
					</div>

				</div>


			</ul>
			<i class="fas fa-chevron-circle-right right"></i> 
		</div>
	</div>
	<!--  <i class="fas fa-chevron-circle-left left" style="display: none"></i> 
	<i class="fas fa-chevron-circle-right right"></i>-->
</section>
<hr />
<section style="position: relative;">
	<div class="inner">
		<div class="main-new">
			<div class="main-title-new">
				<div class="main-title">추천</div>
				<button type="button"
					onclick="location.href='<%=application.getContextPath()%>/product/rec'"
					class="btn btn-outline-secondary btn-sm">더보기></button>
			</div>




			<ul class="new-list">
				<!-- Slider main container -->
				<div class="swiper-container swiper-container2">

					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!--신규 상품 리스트 출력 -->
						<c:forEach var="product" items="${reclist}">
							<div class="swiper-slide">
								<li class="new-goods" style="margin-left: 0;"
									onclick="location.href='product/detail?pid=${product.p_id}'">

									<img
									src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}"
									width="200px" style="cursor: pointer;">
									<div class="goods-title">${product.p_name}</div>
									<div class="goods-price">${product.p_price}원</div> <!--별점--> <c:forEach
										var="i" begin="1" end="${product.p_rate}">
										<img
											src="${pageContext.request.contextPath}/resources/img/Star.PNG"
											height="10px">
									</c:forEach> <c:forEach var="i" begin="${product.p_rate+1}" end="5">
										<img
											src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
											height="10px">
									</c:forEach> <a style="color: silver;"> (${product.p_rate})</a>

								</li>
							</div>
						</c:forEach>
					</div>

				</div>


			</ul>
		</div>
	</div>
	<i class="fas fa-chevron-circle-left left2" style="display: none;"></i>
	<i class="fas fa-chevron-circle-right right2"></i>
</section>
<hr />


<script>
    	const rbtn = document.querySelectorAll(".fa-chevron-circle-right");
    	console.log(rbtn);
    	const lbtn = document.querySelectorAll(".fa-chevron-circle-left");
    	for(let i=0; i<rbtn.length; i++){
    		rbtn[i].addEventListener('click',()=>{
    			rbtn[i].style.display="none";
        		lbtn[i].style.display="block";
    		})
    		lbtn[i].addEventListener('click',()=>{
    		rbtn[i].style.display="block";
    		lbtn[i].style.display="none";
    	})
    	}
    </script>


<section>
	<div class="inner">
		<div class="main-new">
			<div class="main-title-new">
				<div class="main-title">랭킹</div>
				<button type="button"
					onclick="location.href='<%=application.getContextPath()%>/product/rank'"
					class="btn btn-outline-secondary btn-sm">더보기></button>
			</div>
			<div class="container rank-container">
				<div class="row">
					<div class="col">
						<div class="test-container">
							<i class="fas fa-crown">
								<div class="rank-text">1</div>
							</i> <a
								href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[0].p_id}">
								<img
								src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[0].photolist[0].photo_sname}&photoType=${ranklist[0].photolist[0].photo_type}"
								alt="rank1" class="rank-image" />
								<div class="rank-info">
									<div class="rank-title">${ranklist[0].p_name}</div>
									<div class="rank-price">${ranklist[0].p_price}원</div>
									<div class="rate">
										<!--별점-->
										<c:forEach var="i" begin="1" end="${ranklist[0].p_rate}">
											<img
												src="${pageContext.request.contextPath}/resources/img/Star.PNG"
												height="10px">
										</c:forEach>
										<c:forEach var="i" begin="${ranklist[0].p_rate+1}" end="5">
											<img
												src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
												height="10px">
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

						<a
							href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[3].p_id}">
							<img
							src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[3].photolist[0].photo_sname}&photoType=${ranklist[3].photolist[0].photo_type}"
							alt="rank1" class="rank-image" />
							<div class="rank-info">
								<div class="rank-title">${ranklist[3].p_name}</div>
								<div class="rank-price">${ranklist[3].p_price}원</div>
								<div class="rate">
									<!--별점-->
									<c:forEach var="i" begin="1" end="${ranklist[3].p_rate}">
										<img
											src="${pageContext.request.contextPath}/resources/img/Star.PNG"
											height="10px">
									</c:forEach>
									<c:forEach var="i" begin="${ranklist[3].p_rate+1}" end="5">
										<img
											src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
											height="10px">
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
					<i class="fas fa-crown" style="color: #868e96;">
						<div class="rank-text">2</div>
					</i> <a
						href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[1].p_id}">
						<img
						src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[1].photolist[0].photo_sname}&photoType=${ranklist[1].photolist[0].photo_type}"
						alt="rank3" class="rank-image" />
						<div class="rank-info">
							<div class="rank-title">${ranklist[1].p_name}</div>
							<div class="rank-price">${ranklist[1].p_price}원</div>
							<div class="rate">
								<!--별점-->
								<c:forEach var="i" begin="1" end="${ranklist[1].p_rate}">
									<img
										src="${pageContext.request.contextPath}/resources/img/Star.PNG"
										height="10px">
								</c:forEach>
								<c:forEach var="i" begin="${ranklist[1].p_rate+1}" end="5">
									<img
										src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
										height="10px">
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

				<a
					href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[4].p_id}">
					<img
					src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[4].photolist[0].photo_sname}&photoType=${ranklist[4].photolist[0].photo_type}"
					alt="rank1" class="rank-image" />
					<div class="rank-info">
						<div class="rank-title">${ranklist[4].p_name}</div>
						<div class="rank-price">${ranklist[4].p_price}원</div>
						<div class="rate">
							<!--별점-->
							<c:forEach var="i" begin="1" end="${ranklist[4].p_rate}">
								<img
									src="${pageContext.request.contextPath}/resources/img/Star.PNG"
									height="10px">
							</c:forEach>
							<c:forEach var="i" begin="${ranklist[4].p_rate+1}" end="5">
								<img
									src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
									height="10px">
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
			<i class="fas fa-crown" style="color: #0ca678">
				<div class="rank-text">3</div>
			</i> <a
				href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[2].p_id}">
				<img
				src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[2].photolist[0].photo_sname}&photoType=${ranklist[2].photolist[0].photo_type}"
				alt="rank1" class="rank-image" />
				<div class="rank-info">
					<div class="rank-title">${ranklist[2].p_name}</div>
					<div class="rank-price">${ranklist[2].p_price}원</div>
					<div class="rate">
						<!--별점-->
						<c:forEach var="i" begin="1" end="${ranklist[2].p_rate}">
							<img
								src="${pageContext.request.contextPath}/resources/img/Star.PNG"
								height="10px">
						</c:forEach>
						<c:forEach var="i" begin="${ranklist[2].p_rate+1}" end="5">
							<img
								src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
								height="10px">
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

			<a
				href="<%=application.getContextPath()%>/product/detail?pid=${ranklist[5].p_id}">
				<img
				src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${ranklist[5].photolist[0].photo_sname}&photoType=${ranklist[5].photolist[0].photo_type}"
				alt="rank1" class="rank-image" />
				<div class="rank-info">
					<div class="rank-title">${ranklist[5].p_name}</div>
					<div class="rank-price">${ranklist[5].p_price}원</div>
					<div class="rate">
						<!--별점-->
						<c:forEach var="i" begin="1" end="${ranklist[5].p_rate}">
							<img
								src="${pageContext.request.contextPath}/resources/img/Star.PNG"
								height="10px">
						</c:forEach>
						<c:forEach var="i" begin="${ranklist[5].p_rate+1}" end="5">
							<img
								src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
								height="10px">
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
						<li class="class-card"><a
							href="<%=application.getContextPath()%>/product/detail?pid=${product.p_id}">
								<img
								src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${product.photolist[0].photo_sname}&photoType=${product.photolist[0].photo_type}"
								alt="Review1" class="class-image" />
								<div class="class-container">
									<div class="class-box">
										<div class="class-type">사이즈 L</div>
										<div class="class-format">
											<!--별점-->
											<c:forEach var="i" begin="1" end="${product.p_rate}">
												<img
													src="${pageContext.request.contextPath}/resources/img/Star.PNG"
													height="10px">
											</c:forEach>
											<c:forEach var="i" begin="${product.p_rate+1}" end="5">
												<img
													src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"
													height="10px">
											</c:forEach>

											<a style="color: silver;">(${product.p_rate})</a>
										</div>
									</div>
									<div class="class-desc">
										<div class="class-title">플로트 스탠다드 골지 티셔츠 그린</div>
										<div class="class-detail">리뷰: 리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</div>
									</div>
								</div>
						</a></li>

					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
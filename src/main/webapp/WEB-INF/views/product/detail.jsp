<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
	<head>
		<title>Spring</title>
	</head>

    <!--상세페이지 시작-->
     <!--회색 바-->
     <div class="container-fluid border " style="background-color:#f4f4f5">
        <div class="inner">
            홈 > ${product.p_category_name} > ${product.p_name}
        </div>
    </div>
    <div class="inner">
        <!--상세페이지 컨테이너-->
        <div class="container-fluid p-0">
            <!--제품 개요-->
            <div class="container-fluid " >
                <div class="row justify-content-between"style="height: 12%; ">
                    <!--사이즈 표-->
                    <figure class="figure ">
                        <img class="img "   src="${pageContext.request.contextPath}/resources/img/SizePic.PNG">
                        <figcaption class="figure-caption text-center ">S</figcaption>
                        <figcaption class="figure-caption text-center ">0~25mm</figcaption>
                    </figure>
                    <figure class="figure" >
                        <img class="img "   src="${pageContext.request.contextPath}/resources/img/SizePic.PNG">
                        <figcaption class="figure-caption text-center ">M</figcaption>
                        <figcaption class="figure-caption text-center ">15~30mm</figcaption>
                    </figure>
                    <figure class="figure ">
                        <img class="img "   src="${pageContext.request.contextPath}/resources/img/SizePic.PNG">
                        <figcaption class="figure-caption text-center ">L</figcaption>
                        <figcaption class="figure-caption text-center ">25~40mm</figcaption>
                    </figure>
                    <figure class="figure ">
                        <img class="img "   src="${pageContext.request.contextPath}/resources/img/SizePic.PNG">
                        <figcaption class="figure-caption text-center ">XL</figcaption>
                        <figcaption class="figure-caption text-center ">35~60mm</figcaption>
                    </figure>
                    <figure class="figure ">
                        <img class="img "    src="${pageContext.request.contextPath}/resources/img/SizePic.PNG">
                        <figcaption class="figure-caption text-center ">2XL</figcaption>
                        <figcaption class="figure-caption text-center ">55~80mm</figcaption>
                    </figure>
                    
                </div>
                
				<script>
                  	function detailPicClick(src){
                  		$("#mainPic").attr("src",src );
                  	}
                </script>
                
                <div class="row justify-content-center"style="height: 75%; ">
                    <!--제품 사진-->
                    <div class="col-md-6 border">
                        <!--메인 사진-->
                        <div class="row border" style="height: 82%;">
                        	<img class="img" id="mainPic" style="height: 100%; width: 100%;" src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${mainphoto.photo_sname}&photoType=${mainphoto.photo_type}">
                        </div>
                        <!--세부 사진-->
                        <div class="row   justify-content-center" style=" height: 15%; padding:35px">
                            <img input type="button" class="img border" onclick="detailPicClick('${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${mainphoto.photo_sname}&photoType=${mainphoto.photo_type}')" style="margin: 0px 3px; height: 100px; width: 100px;"  src="${pageContext.request.contextPath}/resource/GetPhoto?photoSname=${mainphoto.photo_sname}&photoType=${mainphoto.photo_type}">
                            <c:forEach var="subphoto" items="${subphotolist}">
				    			<img input type="button" class="img border" onclick="detailPicClick('${pageContext.request.contextPath}/resource/GetSubPhoto?photoSname=${subphoto.photo_sname}&photoType=${subphoto.photo_type}')" style="margin: 0px 3px; height: 100px; width: 100px;" src="${pageContext.request.contextPath}/resource/GetSubPhoto?photoSname=${subphoto.photo_sname}&photoType=${subphoto.photo_type}">
                            </c:forEach>
                         </div>
                    </div>
                    <!--구매옵션--> 
                    <div class="col-md-6 border" style="padding: 3%;">
                        <!--상품명--> 
                        <div class="row" style="margin-left: 5px; margin-bottom: 20px;">
                            <h2>${product.p_name}</h2>
                        </div>
                        <!--상품사이즈--> 
                        
                        <!--상품사이즈 토글 텍스트 변경--> 
                        <script>
                        function DropSelect(select)
                        {
                        	$("#selectSize").html(select.id);
                        }
                      
                        </script>
                        <div class="row" style="margin: 40px 0">
                            <div class="dropdown" style="width: 100%;">
                             <button class="btn btn-lg border dropdown-toggle text-left"  style="width: 100%;" type="button" id="sizedropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    사이즈</br>
                                    <div id="selectSize">선택</div> 
                             </button>
                                <div class="dropdown-menu dropdown-menu-xl w-100">
	                              <c:forEach var="size" items="${sizelist}">
	                              	 <a class="dropdown-item" id="${size.p_size}" onclick="DropSelect(this)" href="#">
	                                        ${size.p_size}</br>
	                                </a>
	                              	<div class="dropdown-divider"></div>
					    		  </c:forEach> 
                                </div>
                            </div>
                        </div>
                        <!--상품가격--> 
                        <div class="row" style="margin: 40px 0px;">
                            <div class="col text-left">
                                판매가
                            </div>
                            <div class="col text-right">
                                ${product.p_price}원
                            </div>
                        </div>
                        <hr/>
                        <!--재고,배송,업체배송 상태,--> 
                        <div class="row justify-content-center" style="padding: 0 0;" >
                            <div class="col-3 "style="font-size: smaller;">
                                <img  style="margin: 0px 0px;"  src="${pageContext.request.contextPath}/resources/img/재고있음.PNG">
                                <c:if test="${product.p_stock>0}">
                                재고있음
                                </c:if>
                                <c:if test="${product.p_stock<1}">
                                재고없음
                                </c:if>
                                
                            </div>  
                            <div class="col-3 "style="font-size: smaller;">
                                <img style="margin: 0px 0px;"  src="${pageContext.request.contextPath}/resources/img/업체발송.PNG">
                                업체발송
                            </div>
                            <div class="col-3 " style="font-size: smaller;">
                                <img  style="margin: 0px 0px;"  src="${pageContext.request.contextPath}/resources/img/무료배송.PNG">
                                배송비
                            </div>
                        </div>
                        <hr/>
                        
                        <script>
                        <!--상품 개수 감소 증가해주는 함수 -->
                        var price = ${product.p_price};
                        function decrease(){
                        	var amount = parseInt($("#selectAmount").text());
                        	var priceNum = parseInt(price);
                        	var totalprice = parseInt($("#totalprice").text());
                        	if(amount>1){
                        		amount=amount-1;
                            	$("#selectAmount").text(amount);
                            	totalprice = totalprice-priceNum;
                            	$("#totalprice").text(totalprice+"원");
                        	}
                        }
                        
                        function increase(){
                        	var amount = parseInt($("#selectAmount").text());
                        	var priceNum = parseInt(price);
                        	var totalprice = parseInt($("#totalprice").text());
                        	if(amount<${product.p_stock}){
                        		amount=amount+1;
                            	$("#selectAmount").text(amount);
                            	totalprice = totalprice+priceNum;
                            	$("#totalprice").text(totalprice+"원");
                        	}
                        }
                        
                        </script>
                        <!--수량선택컨테이너--> 
                        <div class="container justify-content-center" style="padding: 20px; margin: 40px 0px; background-color:#f4f4f5 ;">
                            <div class="row" style="margin: 5px;">
                                <div class="col text-left">
                                    수량
                                </div>
                                <div class="col text-right">
                                    총 상품금액
                                </div>
                            </div>

                            <div class="row justify-content-center align-items-center" style="margin: 5px;">
                                <!--수량선택--> 
                                <div class="col text-left">
                                    <div class="btn-group btn-group-toggle"  >
                                        <a href='javascript:void(0);' onclick="decrease();" class="btn border d-flex align-items-center justify-content-center" style="background-color: white; height: 50px; width: 50px;">
                                        -
                                        </a>
                                        <a class="btn border disabled d-flex align-items-center justify-content-center" id="selectAmount" style="background-color: white; height: 50px; width: 75px;">1</a>
                                        <a href='javascript:void(0);' onclick="increase();" class="btn border d-flex align-items-center justify-content-center" style="background-color: white; height: 50px; width: 50px;">
                                        +
                                        </a>
                                    </div>
                                </div>
                                <!--계산된 가격-->
                                <div class="col text-right align-items-center" id="totalprice">
                                    ${product.p_price}원
                                </div>
                            </div>
                        </div>
                        
                        <script>
                        <!--카트 담기-->
                        const PutCart=(pid)=>{
                        	event.preventDefault();
                    		const pamount = $("#selectAmount").text();
                    		const psize =$("#selectSize").text();
                    		if(psize==="선택"){
                    			alert("사이즈를 선택해 주세요")
                    			return;
                    		}
                    		
                    		$.ajax({
                    			url:"${pageContext.request.contextPath}/order/putcart",
                    			data: {pid, pamount, psize},
                    			method: "get"
                    		}).then(data=>{
                    			if(data.result=="success"){
                    				alert("카트담기 완료");
                    			}else if(data.result=="fail"){
                    				alert("이미 추가한 상품입니다.");
                    			}
                    			
                    		});
                        }
                        </script>
                        
                        
                        <!--장바구니 담기, 바로구매 버튼 컨테이너-->
                        <div class="row " style="margin: 70px 5px;">
                            <!--장바구니 담기 버튼-->
                            <div class="col-12" style="padding:0 3%;">
                                <button type="button" onclick="PutCart(${product.p_id})"  class="btn btn-danger text-center btn-lg btn-block">구매하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--상세페이지 메뉴컨테이너-->
            <div class="container-fluid " style="border-bottom: 1px solid darkgray; padding: 10px;"  >
                <ul class="nav  justify-content-around "  >
                    <li class="nav-item" style="text-align:center; width: 20%; margin: 0 0; ">
                    <a class="nav-link1 active" href="#">상품정보</a>
                    </li>
                    <li class="nav-item"style="text-align:center width: 20%; margin: 0 0; ">
                    <a class="nav-link1" href="#" >질문/답변</a>
                    </li>
                    <li class="nav-item"style="text-align:center width: 20%;  margin: 0 0; ">
                    <a class="nav-link1" href="#">구매후기</a>
                    </li>
                    <li class="nav-item"style="text-align:center width: 20%;  margin: 0 0;  ">
                    <a class="nav-link1 " href="#">취소/교환/반품 안내</a>
                    </li>
                </ul>
                
            </div>
            <!--상세페이지 상품정보 제목 컨테이너-->
            <div class="container " style="  font-weight: bold; font-size: large;">
                상품정보 
            </div>
            <!--상세페이지 상품정보 텍스트 컨테이너-->
            <div class="container border" style="font-size: small; border-top: solid 1px black;">
                <!--상세페이지 상품정보 설명 컨테이너-->
                <div class="row"style="padding: 20px; border-top: solid 1px black;">
                    설명<br/>
                    ${product.p_description}
                 </div>
                <!--상세페이지 상품정보 특징 컨테이너-->
                <div class="row" style="padding: 0;">
                
                    <ul>
                        특징
                        <li>견종에 따라 접을 수 있는 소매로 다양한 견종이 편하게 착용 가능</li>
                        <li>플로트만의 견체공학 패턴으로 활동하기 편한 구조</li>
                        <li>유니크한 디자인</li>
                    </ul>
                </div>
            </div>
            <!--상세페이지 Detail 컨테이너-->
            <div class="row justify-content-md-center mb-5"  >
                <!--Detail 이미지-->
                <img src="${pageContext.request.contextPath}/resource/GetDetailPhoto?photoSname=${detailphoto.photo_sname}&photoType=${detailphoto.photo_type}" >
                <!--Detail 접기 버튼-->
                <button type="button" class="btn w-50  disabled btn-outline-danger text-center btn-lg btn-block">상품 상세 접기</button>
            </div>

			<script>
			
			function OnClickStar(num){
				
				var number = parseInt(num);
				for(var i=1; i<=number; i++){
					$("#star"+i).attr("src","${pageContext.request.contextPath}/resources/img/Star.PNG");
					console.log($("#star"+i).attr("src"));
				}
				for(var i=number+1; i<=5; i++){
					$("#star"+i).attr("src","${pageContext.request.contextPath}/resources/img/EmptyStar.PNG");
					console.log($("#star"+i).attr("src"));		
				}
				
				$("#score").attr('value',num);
				
			}
			
			
			// confirmOrdered컨트롤러에서 해당 유저가 구매한 상품인지 확인 후 fial이라면 모달창 안나오게함
        	 const confirmOrdered=(pid)=>{
             	event.preventDefault();
             	console.log("confirm!");
         		
         		$.ajax({
         			url:"${pageContext.request.contextPath}/product/confirmOrdered",
         			data: {pid},
         			method: "get"
         		}).then(data=>{
         			if(data.result=="success"){
        				console.log("success");
        			}
        			else{
        				alert("주문한 상품이 아닙니다.");
    				
    					  $(".modal-backdrop").remove();
    					  location.reload(true);
        			}
        				function myFunction() {
        					
        					
        					 
        				
        			}
         			
         		});
             }
        	 
        	 
        	 
			</script>

		
            <!--상세페이지 구매후기 제목 컨테이너-->
            <div class="container " style="  font-weight: bold; font-size: large;">
                <div class="row justify-content-between" style="margin: 2px;">
                    <!--구매후기 제목-->
                    구매후기
                    
                    <!--로그인 됬을때만 글쓰기 버튼 생성--> 
                    <sec:authorize access="isAuthenticated()">          
                    <!--구매후기 글쓰기 버튼-->
                    <button type="button" onclick="confirmOrdered(${product.p_id})" class="btn btn-outline-dark btn-sm"data-toggle="modal" data-target="#staticBackdrop">글쓰기</button>
                    </sec:authorize>
                    
                    
                    <!-- Modal - 리뷰쓰기 -->
                    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">      
                        <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
                            <!--리뷰쓰기 컨테이너 -->
                            <div class="modal-content border" style="display: flex;">
                                <!--리뷰쓰기 타이틀-->
                                <div  style="display:flex;justify-content: center; padding:3%; background-color: #f4f4f5; ">
                                    <h5 class="modal-title strong font-weight-bold" id="exampleModalLabel" style="font-size: x-large;" >리뷰 작성</h5>
                                </div>
                                <!--상품명 및 별점 컨테이너-->
                                <div style="display:flex;flex-direction: column; align-items: center; padding: 3% 0; border-bottom: 1px #c4c4c6 solid ;">
                                    <!--상품명-->
                                    <div style="margin:2% 0; font-size: x-large;">
                                        헤이제리 테디베어 퍼 후드 베이지
                                    </div>
                                    <!--별점 텍스트-->
                                    <div>
                                        쇼핑은 어떠셨나요?
                                    </div>
                                    <!--별점-->
                                    <div style="display: flex; ">
                                        <img id="star1" onclick="OnClickStar('1')" src="${pageContext.request.contextPath}/resources/img/Star.PNG"  height="40px" >
                                        <img id="star2" onclick="OnClickStar('2');"src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"  height="40px">
                                        <img id="star3" onclick="OnClickStar('3');"src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"  height="40px">
                                        <img id="star4" onclick="OnClickStar('4');"src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"  height="40px">
                                        <img id="star5" onclick="OnClickStar('5');"src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG"  height="40px">
                                    </div>
                                </div>
                               <!--리뷰 입력 폼-->
                               <form action="reviewupload?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
                                <!--리뷰 입력 컨테이너-->
                                <div style="display:flex;flex-direction: column; padding:2% 20%; height: 100%;">
                                 		<input type="hidden" name="score" id="score" value="1"/>       
	                                    <input type="hidden" name="pid" id="pid" value=${product.p_id}>         
     								    <div class="form-group">
                                            <!--제목 폼-->
                                            <label for="recipient-name" class="col-form-label">제목</label>
                                            <input type="text" name="title" class="form-control" id="recipient-name" placeholder="제목을 입력해 주세요.">
                                        </div>                                        
                                        <div class="form-group">
                                            <!--내용 폼-->
                                            <label for="message-text" class="col-form-label">내용</label>
                                            <textarea class="form-control" name="content" id="message-text"style="height:200px; overflow:hidden; resize: none;"  placeholder="내용을 최소 10자 이상 입력하세요."></textarea>
                                        </div>
                                        <!--사진 입력 버튼-->
                                        <label  class="form-control" for="battach" id="recipient-pic" style="border:1px black dashed; cursor:pointer; text-align:center; margin:3% 0; padding: 5px; ">
                                            <i class="fas fa-camera">사진/동영상 첨부하기</i>
                                        </label>                                     
                                        <input type="file" class="form-control-file" id="battach" name="battach" style="display: none;"/>                         
                               		 </div>  
  								
                                
                                <!--닫기/등록 버튼 컨테이너-->
                                <div style="width: 100%; height: 30%; padding:2% 0%; display:flex; justify-content: space-around; align-items: center; ">
                                    <button id="closemodal" type="button" style="padding:1% 3%; font-size: large; width: 48%; height: 100%;"class="btn btn-danger" data-dismiss="modal">취소</button>
                                    <button type="submit" style="padding:1% 3%; font-size: large; width: 48%;  height: 100%;"class="btn btn-danger">등록</button>
                                </div>
                                </form> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
           
            
            
           
            <!--상세페이지 구매후기 내용 컨테이너-->
            <div class="container " style="font-size: small; border-top: solid 1px black; padding:0">        
                <!--상세페이지 구매후기 목록1-->
                <div class="container "style="margin:1% 0; border-bottom:1px solid gray;">
                	<c:forEach var="review" items="${reviewlist}">
                		<!--구매후기 제목 컨테이너-->
	                    <div class="row ">
	                        <!--강아지 얼굴 사진-->
	                        <img src="${pageContext.request.contextPath}/resources/img/DogFace.PNG">
	                        <!--구매후기 제목 내용 컨테이너-->
	                        <div class="col-9" style="padding:0 ">
	                            <span id="startspan" style="margin:0 0; white-space:nowrap; font-size:medium">
	                                <!--별점-->
	                               <c:forEach var="i" begin="1" end="${review.review_score}">
	                               <img src="${pageContext.request.contextPath}/resources/img/Star.PNG" height="20px">
	                               </c:forEach>
	                               <c:forEach var="i" begin="${review.review_score+1}" end="5">
	                               <img src="${pageContext.request.contextPath}/resources/img/EmptyStar.PNG" height="10px">
	                               </c:forEach>
	                                <!--구매인증됨 | 작성 날짜-->
	                                구매인증됨  |  <fmt:formatDate value="${review.review_date}" pattern="yyyy-MM-dd"/><br/>
	                            </span>
	                            <!--작성자 및 강아지 정보-->
	                            ${review.user_name}
	                        </div>
	                    </div>
	                    <!--구매후기 내용-->
	                    <div class="row"style="margin-bottom:2%; font-size:medium">
	                    	<c:if test="${review.photo_sname ne null}">
	                    	<img src="${pageContext.request.contextPath}/resource/GetReviewPhoto?photoSname=${review.photo_sname}&photoType=${review.photo_type}" style=" height: 100px; width: 100px; margin-right: 1%;margin-top: 1%;">
	                    	</c:if>
	                        옵션 : ${product.p_category_name}<br/>${review.review_content}
	                   </div>
                	</c:forEach>
                </div>
                

            <!--상세페이지 질문/답변 제목 컨테이너-->
            <div class="container " style="  font-weight: bold; font-size: large;">
                취소/교환/반품 안내
            </div>
            <!--상세페이지 질문/답변 텍스트 컨테이너-->
            <div class="container border" style="font-size: small;">
                <!--상세페이지 질문/답변 설명 컨테이너-->
                <div class="row "style="padding: 20px;  border-top: solid 1px black;">
                    <ul>
                        <h6>취소</h6>
                        <li>입금하신 상품은 '입금대기, 입금완료' 단계에서만 취소가 가능합니다.</li>
                        
                    </ul>
                </div>
            </div> 
        </div>
    </div>
    </div>
   <%@ include file="/WEB-INF/views/common/footer.jsp"%>
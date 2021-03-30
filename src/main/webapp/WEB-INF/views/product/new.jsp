<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
    <style type="text/css">
      * {
            box-sizing:border-box;
         margin: 0px;
         padding: 0px;
      }
      .scale {
        transform: scale(1);
        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        -o-transform: scale(1);
        transition: all 0.3s ease-in-out;   /* 부드러운 모션을 위해 추가*/
     }   
     .scale:hover {
         transform: scale(1.2);
        -webkit-transform: scale(1.2);
        -moz-transform: scale(1.2);
        -ms-transform: scale(1.2);
        -o-transform: scale(1.2);
    }   
    .img {width:325px; height:280px; overflow:hidden }   /* 부모를 벗어나지 않고 내부 이미지만 확대 */
      .event{
            background-color: rgb(255, 81, 82);
            color: white;
            font-size: 0.9em;
            display: inline;
            padding-inline: 8px;
            border-radius: 5px;
        }
        <!--
        A:link {text-decoration:none; color: black;}
        A:visited {text-decoration: none; color: black;}
        A:hover{text-decoration: none; color: black;}
        -->
      .jss486 {
          height: 40px;
          padding: 10 5 2 4px;
          margin: 0px 0px 10px 0px;
          border-top: 1px solid rgba(235, 235, 235, 1);
          border-bottom: 1px solid #cfcfd0;
      }
      .header1 {
         background-color: #ff3357;
         text-align: center;
         height: 130px;   
         color: white;
         font-size: 3em;   
      }
      .header2 {
         background-color: gray;
         height: 20px;            
      }
      .center{
        display: flex;
    	flex-direction: row;
   		 flex-wrap: wrap;
      }
      .flex-items{
	   flex: auto;

　	}
      .left{
         display: flex;
         justify-content: left;
      }
      
      .bodyleftblank {
         list-style-type: none;
         padding: 10px;
         background-color: white;
         flex: 0.2;
      }
      
      .content {
         padding: 10px;
         background-color: white;
         flex: 6;
      }
      
      .bodyrightblank {
         list-style-type: none;
         padding: 10px;
         background-color: white;
         flex: 0.2;
      }
      
      .footer{
         background-color: #ff3357;
         font-size: 3em;
         color: white;
         text-align: center;
         height: 300px;
      }
      
      .box{
         padding: 10px;
         background-color: white;
         flex: 2;
            font-size: 0.8em;
            font-family: Noto Sans KR, sans-serif;
            font-weight: 400;
      }
        
    

        .jss909{
            width: 24px;
            border: 0 none;
            height: 24px;
            display: inline-block;
            overflow: hidden;
            text-indent: -1000em;
            background-size: 24px 24px;
        }
        
        .icon_color{
            
            color : gold;
            border: 0 none;
            display: inline-block;
            overflow: hidden;
            position: relative;
        }

        .rank_text{
            text-decoration: #ff3357;
            display: inline-block;
            overflow: hidden;
            position: relative;
            transform: translate( -50%, -50% );
        }
        .header2 {
            padding-left: 25px;
         background-color: rgb(244, 244, 245);
         height: 30px;            
            font-size: 0.85em;   
      }
       
   </style>
</head>

    <div class="header2">
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 신규</div>
   </div>
    <div class="inner">
         <div class="jss486" style="padding: 3px;">
            <span style="padding: 10px;"><strong>30</strong>개의 상품</span>
         </div>
            <div class="center">  
            	<!--신규 상품 리스트 출력 -->
            	<c:forEach var="product" items="${list}">
				 <div class="flex-items"> 
				 	<figure>
      					<img src="${pageContext.request.contextPath}/resources/img/dog1.JPG" width="200px">
      					<figcaption>${product.pname}</figcaption>
      					<figcaption><i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)</figcaption>
    					<figcaption>신상품</figcaption>
    				</figure>
                </div>
				</c:forEach>
            </div> 
            
      </div>
      <div class="d-flex text-center">
					<div class="flex-grow-1">
				
						<!-- 6 7 8 9 10 -->
						<a class="btn btn-outline-primary btn-sm"
							href="new?pageNo=1">처음</a>
							
						<c:if test="${pager.groupNo>1}">
							<a class="btn btn-outline-info btn-sm"
							href="new?pageNo=${pager.startPageNo-1}">이전</a>
						</c:if>	
						
						<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
							<a class="btn 
							<c:if test='${pager.pageNo==i}'>btn-danger</c:if>
							<c:if test='${pager.pageNo!=i}'>btn-outline-success</c:if>
							
							btn-sm" href="new?pageNo=${i}">${i}</a>
						</c:forEach>
						
						<c:if test="${pager.groupNo<pager.totalGroupNo}">
							<a class="btn btn-outline-info btn-sm"
							href="new?pageNo=${pager.endPageNo+1}">다음</a>
						</c:if>		
							
						<a class="btn btn-outline-primary btn-sm"
							href="new?pageNo=${pager.totalPageNo}">맨끝</a>
					</div>
		</div>   
 

 <%@ include file="/WEB-INF/views/common/footer.jsp"%> 
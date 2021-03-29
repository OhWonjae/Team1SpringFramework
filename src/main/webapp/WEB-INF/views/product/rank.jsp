<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 시작 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
	<link rel="stylesheet" href="<%=pageContext.getServletContext().getContextPath() %>/resources/css/hungyun.css">
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

	<div class="header2">
        <div class="inner" style="font-size: 0.85em; padding-top: 5px;">홈 > 랭킹</div>
	</div>
	
	 <div class="inner">
			
			
			<div class="box"> 
				<h3 style="padding-top: 10px;">랭킹</h3>
                
				<button type="button" class="btn btn-light" onclick="location.href='rank'">전체</button>
				<button type="button" class="btn btn-light" onclick="location.href='rankcategory?category=후드티'">후드티</button>
				<button type="button" class="btn btn-light" onclick="location.href='rankcategory?category=원피스'">원피스</button>
				<button type="button" class="btn btn-light" onclick="location.href='rankcategory?category=패딩/코트'">패딩/코트</button>
				<button type="button" class="btn btn-light" onclick="location.href='rankcategory?category=올인원'">올인원</button>
			</div>		

			<div class="jss486" style="padding: 3px;">
			    <span style="padding: 10px;"><strong>30</strong>개의 상품</span>
			</div>
	
			 <div class="center">  
            	<!--랭킹 상품 리스트 출력 -->
            	<c:forEach var="product" items="${list}" varStatus="status">
				 <div class="flex-items"> 
				 	<figure>
				 		<figcaption>${status.count}위</figcaption>
      					<img src="${pageContext.request.contextPath}/resources/img/dog1.JPG" width="200px">
      					<figcaption>${product.pname}</figcaption>
      					<figcaption><i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> <i class="fas fa-star" style="color: #ff3357;"></i> (0)</figcaption>
    				</figure>
                </div>
				</c:forEach>
            </div> 
		</div>    
  

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
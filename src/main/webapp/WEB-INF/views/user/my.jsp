<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>
<script>
      	/*const signOut=()=>{
      		event.preventDefault();
      		swal("회원탈퇴하시겠습니까?", {
				  dangerMode: true,
				  buttons:{
					  confirm2:{
						  text:'예',
						  value:true
					  },
      			  confirm:{
      				  text:'아니요',
      				  value:false
      			  }
				  }
				}).then((result)=>{
					$.ajax({
            			url:"${pageContext.request.contextPath}/signout",
            			data:{${_csrf.parameterName}:"${_csrf.token}"},
            			method:"post"
            		})
            		location.href='${pageContext.request.contextPath}/loginForm';
				})
      	}*/
      	
      	function signOut(){
      	   event.preventDefault();
      	   swal({
      	        title: "회원탈퇴",
      	        text: "탈퇴 하시겠습니까?",
      	        buttons: true,
      	        dangerMode: true,
      	      }).then((willDelete) => {
      	        if (willDelete) {
      	          $(".deleteUser")[0].submit(); //form에서 deleteUser클래스를 제출
      	        }
      	      });
      	}

      	
</script>
<body>
	<div class="header2">
		<div class="inner">
			<div style="font-size: 0.85em; padding-top: 5px;">홈 > 고객센터</div>
		</div>
	</div>
	<div class="inner" style="margin-bottom: 80px;">
		<div class="info" style="height: 120px;">
			<picture style="float: left;"> <img
				src="${pageContext.request.contextPath}/resources/img/profile-empty.svg"
				style="width: 75px; border: 1px solid #cfcfd0; overflow: hidden; border-radius: 50%; background-color: #fff;">
			</picture>
			<div style="float: left; padding-left: 20px; padding-top: 15px;">
				<strong>${user.user_name}</strong> <i class="fas fa-cog"></i>
				<div style="color: rgb(138, 138, 146); font-size: 0.9em;">${user.user_id}</div>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col-2">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-my" id="list-home-list"
						style="text-decoration: none; border-color: white; color: black; font-weight: bold; font-size: 1.3em;">마이페이지</a>
					<a class="list-group-item list-group-item-action active"
						href="<%=application.getContextPath()%>/user/my" role="tab"
						aria-controls="home">회원정보</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/order/history" role="tab"
						aria-controls="profile">주문내역</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/order/cart" role="tab"
						aria-controls="messages">장바구니</a> <a
						class="list-group-item list-group-item-action"
						href="<%=application.getContextPath()%>/boards/askList" role="tab"
						aria-controls="settings">고객센터</a>
				</div>
			</div>
			<div class="col-10">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-home";
						role="tabpanel" aria-labelledby="list-home-list" style="font-size: 600;">
						<br>
						<h5>
							<strong>나의 정보</strong>
						</h5>
						<br>
						<div class="tab-master">
							<div class="tab">
								<div class="tab3">이름</div>
								<div class="tab2">
									<strong>${user.user_name}</strong>
								</div>
							</div>
							<div class="tab">
								<div class="tab4">이메일</div>
								<div class="tab2">
									<strong>${user.user_id}</strong>
								</div>
							</div>
							<div class="tab">
								<div class="tab1">휴대전화</div>
								<div class="tab2">
									<strong>${user.user_phone} </strong>

									<button style="margin-left: 10px;" type="button"
										onclick="location.href='<%=application.getContextPath()%>/user/phoneChange'"
										class="btn btn-outline-secondary btn-sm">수정</button>
								</div>
							</div>
							<div class="tab">
								<div class="tab1">비밀번호</div>
								<div class="tab2">

									<%-- <strong>${user.user_password}</strong> --%>
									<strong>********</strong>
									<button style="margin-left: 10px;"
										onclick="location.href='<%=application.getContextPath()%>/user/pwChange'"
										type="button" class="btn btn-outline-secondary btn-sm">수정</button>
								</div>
							</div>
							<div class="tab">
								<div class="event">
									<form method="post" class="mb-3"
										action="<%=application.getContextPath()%>/logout">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
										<button type="submit" class="btn btn-outline-secondary btn-sm">로그아웃</button>
									</form>

									<form method="get" class="mt-2 deleteUser" onsubmit="signOut()"
										action="<%=application.getContextPath()%>/signout">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
										<button type="submit" class="btn btn-outline-secondary btn-sm">회원탈퇴</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>

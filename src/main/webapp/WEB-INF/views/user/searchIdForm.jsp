
<%-- page 지시자 --%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.webapp.dto.*"%>

<%-- taglib 지시자 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/menu.jsp"%>

<link rel="stylesheet"
   href="<%=pageContext.getServletContext().getContextPath()%>/resources/css/hungyun.css">
<script>
   function validate() {
      event.preventDefault(); // 기능 잠시 꺼두기
      var result = true;
      // 유효성 검사 시작
      var uname = $("#user_name").val();

      // 휴대폰 번호 3칸으로 나눠서 입력받기
      var user_phone1 = $("#phone1").val();
      var user_phone2 = $("#phone2").val();
      var user_phone3 = $("#phone3").val();
      var user_phone = user_phone1 + user_phone2 + user_phone3;
      document.getElementById("user_phone").value = user_phone;
      var uphone = $("#user_phone").val();
      
      console.log(user_name);
      console.log(user_phone);
      /* console.log(user_phone1);
      console.log(user_phone2);
      console.log(user_phone3); */
      
      if (uname === "") { // 비어있으면 문제
         result = false;
         $("#errorUsername").html("필수사항 입니다.");
      } 
      if (user_phone2 === "" || user_phone3 === "") { // 비어있으면 문제
         result = false;
         $("#errorUserphone").html("필수사항 입니다.");
      }
      if (result) {
         //$("#searchIdForm")[0].submit(); // submit을 통해 꺼진 기능을 살림.
      } else {
         var re_hp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
      }
      if (!re_hp.test(user_phone)) {
         result = false;
         swal("휴대폰 번호에 맞는 형식이 아닙니다.");
         $('#user_phone').val('');
         $('#user_phone').focus();
      }
      
   }
   function fn_searchIdCheck() {
      var uname = $("#user_name").val();

      // 휴대폰 번호 3칸으로 나눠서 입력받기
      var user_phone1 = $("#phone1").val();
      var user_phone2 = $("#phone2").val();
      var user_phone3 = $("#phone3").val();
      var user_phone = user_phone1 + user_phone2 + user_phone3;
      document.getElementById("user_phone").value = user_phone;
      console.log(user_name); 
      console.log(user_phone); 
      
      event.preventDefault(); // 중요
      
      $.ajax({
         url: "searchIdCheck",
         method: "post",
         data: {user_name:$("#user_name").val(), user_phone:$("#user_phone").val(), ${_csrf.parameterName}:"${_csrf.token}"},
         success: function(data) {            
            console.log(data);      
            console.log(uname); 
            console.log(user_phone); 

            if ($("#user_name").val() == '') {
               swal("필수 입력사항입니다.");
            } else if ($("#user_phone").val() == '') {
               swal("필수 입력사항입니다.");
            } else if (data == "0") {
               swal("등록된 ID가 아닙니다.");
            } else {
               $("#searchIdForm")[0].submit(); 
            } 
         }
      })
   }
   
   
</script>

<div class="header2">
   <div class="inner" style="font-size: 0.85em; padding-top: 5px;">
      홈 > 아이디 찾기</div>
</div>

<div class="card" style="border: white;">
   <article class="card-body mx-auto" style="width: 500px;">
      <h4 class="card-title mt-4 mb-4 text-center">
         <strong>아이디 찾기</strong>
      </h4>

      <form id="searchIdForm" name="searchIdForm" method="post" action="searchIdForm"
      onsubmit="validate()" novalidate="novalidate">
         <input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
         <!-- 이름  -->
         <div style="padding: 5px 0 0 0;">
            <strong>이름</strong><span style="color: red;">*</span>
            <div class="form-group input-group">
               <input class="form-control" id="user_name" name="user_name"
                  placeholder="이름을 입력하세요." type="text"><span
               id="errorUsername" class="text-danger error"></span>
            </div>
         </div>
         <!-- 휴대폰 번호 -->
         <div style="font: bolder;">
            <strong>휴대폰 번호</strong><span style="color: red;">*</span>
            <div class="form-group input-group">
               <select class="form-control" type="tel" id="phone1" name="phone1" maxLength="3">
                  <option selected="" value="010">010</option>
                  <option>011</option>
                  <option>016</option>
                  <option>017</option>
                  <option>019</option>
               </select> 
               - <input type="tel" id="phone2" name="phone2" class="form-control"
                  maxLength="4" /> 
               - <input type="tel" id="phone3" name="phone3"
                  class="form-control" maxLength="4" /> 
                 <input type="hidden"
                  id="user_phone" name="user_phone" class="form-control"
                  placeholder="휴대폰 번호를 입력해주세요." type="text"><span
                  id="errorUserphone" class="text-danger error"></span>
            </div>
         </div>
         
         <!-- <a class="btn btn-primary btn-block" style="background-color: rgb(255, 81, 82); height: 50px;">
               아이디(이메일) 체크</a> -->
         <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block" onclick="fn_searchIdCheck()" 
               style="background-color: rgb(255, 81, 82); height: 50px; border-color: rgb(255, 81, 82);">확인</button>
         </div>
      </form>

      <!-- Modal -->

   </article>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 사이드바</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/admin_side.js?ver=08"></script>
<style type="text/css">
body {
   padding: 0;
   margin: 0;
}
#mainDiv {
}
.s_title {
   padding: 0;
   color: white;
   text-align: left;
   margin-left: 30px;
   cursor: pointer;
}
#sub_title {
   margin: 10px auto;
   width: 100%;
   height: 40px;
   line-height: 40px;
   color: white;
   font-size: 18px;
   font-weight: bold;
   background-color: #404040;
}
#menu ul  {
   margin: 0;
   padding: 0;
   list-style: none;
   color: white;
}
#menu ul li {
   padding: 5px;
   text-align: right;
   margin-right: 20px;
   font-size: 17px;
}
#menu ul li a {
   text-decoration: none;
   color: white;
}
</style>
</head>
<body>
<div id="mainDiv">
   <h1 class="s_title" id="mainPage">Admin</h1>
   <br>
   <div id="menu">
   <input type="hidden" value="${sessionScope.MEMBER_INFO.memberId }" id="memberId">
   <!-- 회원 관리 부분 -->
   <div id="sub_title">회원 관리</div>
      <ul>
         <li><a href="#" id="memberBtn">회원 정보 조회</a></li>
         <li><a href="#" id="memberOneToOneBtn">회원 일대일 문의 조회</a></li>
      </ul>
      
   <!-- 영화 관리 부분 -->
   <div id="sub_title">영화 관리</div>
      <ul>
         <li><a href="movieRegForm.do">영화 등록</a></li>
         <li><a href="#" id="movieListBtn">영화 정보 조회</a></li>
         <li><a href="#" id="genreListBtn">장르 조회 및 등록</a></li>
      </ul>
      
   <!-- 상영관 관리 부분 -->
   <div id="sub_title">상영관 관리</div>
      <ul>
         <li><a href="screenRegForm.do">상영관 등록</a></li>
         <li><a href="selectScreenList.do">상영관 목록 조회 및 삭제</a></li>
      </ul>
      
   <!-- 상영 일정 관리 부분 -->
   <div id="sub_title">상영 일정 관리</div>
      <ul>
         <li><a href="scheduleRegForm.do">상영 일정 등록</a></li>
         <li><a href="selectScheduleListAdmin.do">상영 일정 조회 및 삭제</a></li>
      </ul>
      
      <!-- 그 외 부분 -->
   <div id="sub_title"> 그 외 관리</div>
      <ul>
         <li><a href="movieMain.do">홈페이지 바로가기</a></li>
         <c:choose>
            <c:when test="${not empty sessionScope.MEMBER_INFO }">
               <li><a href="logout.do">로그아웃</a></li>
            </c:when>
            <c:otherwise>
               <li><a href="adminLoginForm.do">로그인</a></li>
            </c:otherwise>
         </c:choose>
      </ul>
   </div>
</div>
</body>
</html>
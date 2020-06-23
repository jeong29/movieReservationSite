<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/notice_detail.js?ver=07"></script>
<link rel="stylesheet" href="css/admin/notice_detail.css?ver=01">
</head>
<body>
<input type="hidden" id="noticeNum" value="${notice.noticeNum }"/>

<div id="container">
	<div id="header">
		<h3>${notice.noticeTitle }</h3>
		<table>
			<tr>
				<td>&nbsp;&nbsp;<strong>등록일</strong> : ${notice.createDate }</td>			
				<td>&nbsp;&nbsp;<strong>조회수</strong> : ${notice.readCnt }</td>			
			</tr>
		</table>
	</div>
	<div id="content">
		<p>${notice.noticeContent }</p>
	</div>

<!-- 수정, 삭제 버튼 만들기 -->
	<div class="button">
		<table>
			<tr>
				<td colspan="3"><input type="button" value="목록가기" id="listBtn"/>
			<c:if test="${sessionScope.MEMBER_INFO.memberShip eq 'admin' }">
				<input type="button" value="수정" id="updateBtn"/>
				<input type="button" value="삭제" id="deleteBtn"/>
			</c:if>	
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>
<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 회원 정보 조회</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/admin_member_list.js?ver=41"></script>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}
#memberListDiv {
}
#memberListTable {
	margin: 30px auto;
	width: 80%;
	border-collapse: collapse;
	border: 1px solid black;
}
#memberListTable tr:nth-child(1) {
	font-weight: bold;
}
#memberListTable td {
	border: 1px solid black;
}
</style>
</head>
<body>
<div id="memberListDiv">
	<h2>회 원 정 보 조 회</h2>
	<table id="memberListTable">
		<colgroup>
			<col width="15%">
			<col width="15%">
			<col width="15%">
			<col width="30">
			<col width="15%">
			<col width="20%">
			<col width="10%">
		</colgroup>
		<tr>
			<td>아 이 디</td>
			<td>비밀번호</td>
			<td>이 &nbsp;&nbsp;&nbsp;름</td>
			<td>전화번호</td>
			<td>잔여포인트</td>
			<td>멤버등급</td>
			<td>비 고</td>
		</tr>
		
		<!-- 회원 리스트 -->
		<c:choose>
			<c:when test="${list.size() eq 0 }">
				<tr>
					<td colspan="6">등록한 회원이 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="member">
					<tr>
						<td>${member.memberId }</td>
						<td>${member.memberPassword }</td>
						<td>${member.memberName }</td>
						<td>${member.memberTel }</td>
						<td>${member.memberPoint }</td>
						<td class="memberShip">${member.memberShip }</td>
						<td><input type="button" value="관리자 권한 부여" class="adminGrant" data-memberId="${member.memberId }" /></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
</body>
</html>
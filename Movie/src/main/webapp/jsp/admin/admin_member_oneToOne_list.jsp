<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 회원 일대일문의 리스트</title>
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
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
		</colgroup>
		<tr>
			<td>문 의</td>
			<td>분 류</td>
			<td>제 목</td>
			<td>작성 날짜</td>
			<td>처리 유무</td>
		</tr>
		
		<!-- 회원 리스트 -->
		<c:choose>
			<c:when test="${oneToOneList.size() eq 0 }">
				<tr>
					<td colspan="5">등록한 일대일 문의가 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${oneToOneList }" var="oto">
					<tr>
						<td>${oto.otoContact }</td>
						<td>${oto.otoSort }</td>
						<td><a href="oneToOneDetail.do?otoNum=${oto.otoNum }">${oto.otoTitle }</a></td>
						<td>${oto.otoCreateDate }</td>
						<td>${oto.otoIsUse }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
</body>
</html>
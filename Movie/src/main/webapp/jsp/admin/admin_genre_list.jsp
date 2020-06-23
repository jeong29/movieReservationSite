<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 장르 조회</title>
<script src="js/admin_genre_list.js?ver=02"></script>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}
#genreListTable {
	margin: 30px auto;
	width: 30%;
	border-collapse: collapse;
	border: 1px solid black;
}
#genreListTable tr:nth-child(1) {
	font-weight: bold;
}
#genreListTable td {
	border: 1px solid black;
}
#genreName {
	width: 80%;
	height: 100%;
}
</style>
</head>
<body>
<div id="genreListDiv">
	<h2> 장 르 조 회</h2>
	<table id="genreListTable">
		<colgroup>
			<col width="25%">
			<col width="*">
		</colgroup>
		<tr>
			<td>NO</td>
			<td>장 르 명</td>
		</tr>
		
		<!-- 장르 등록 -->
		<tr>
			<td><input type="button" value="등록" id="insertGenre"></td>
			<td><input type="text" id="genreName"></td>
		</tr>
		
		<!-- 장르 리스트 -->
		<c:choose>
			<c:when test="${list.size() eq 0 }">
				<tr>
					<td colspan="2">등록된 장르가 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="genre">
					<tr>
						<td>${genre.rowNum }</td>
						<td>${genre.genreName }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
</body>
</html>
<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 영화 정보 조회</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/admin_movie_list.js?ver=04"></script>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}
#movieListTable {
	margin: 30px auto;
	width: 60%;
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
}
#movieListTable tr:nth-child(1) {
	font-weight: bold;
}
#movieListTable td {
	border: 1px solid black;
}
a {
	color: black;
	text-decoration: none;
}
.isUse {
	color: red;
	font-weight: bold;
}
.isUseBtn, .isUseIngBtn {
	width: 90%;
	height: 100%;
	color: white;
	background-color: #F24535;
	border-style: none;
}
</style>
</head>
<body>
<div id="movieListDiv">
	<h2>영 화 정 보 조 회</h2>
	<table id="movieListTable">
		<colgroup>
			<col width="*">		
			<col width="15%">		
			<col width="15%">		
			<col width="10%">		
			<col width="10%">		
			<col width="10%">		
			<col width="10%">		
		</colgroup>
		<tr>
			<td>영화명</td>
			<td>관람등급</td>
			<td>장르</td>
			<td>상영시간</td>
			<td>개봉일</td>
			<td>상영여부</td>
			<td>상영중지</td>
		</tr>
		
		<!-- 영화 리스트 -->
		<c:choose>
			<c:when test="${list.size() eq 0 }">
				<tr>
					<td colspan="6">등록된 영화가 없습니다</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="movie">
					<tr>
						<td><a href="movieDetail.do?movieNum=${movie.movieNum }">${movie.movieTitle }</a></td>
						<td>${movie.ratingName }</td>
						<td>${movie.genreName }</td>
						<td>${movie.movieRunningTime }분</td>
						<td>${movie.movieOpenDate }</td>
						<td>
							<c:choose>
								<c:when test="${movie.movieIsUse eq 'Y' }">
									상영중
								</c:when>
								<c:otherwise>
									<font class="isUse">상영중지</font>
								</c:otherwise>
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${movie.movieIsUse eq 'Y' }">
									<input type="button" value="상영중지" class="isUseBtn">
									<input type="hidden" value="${movie.movieNum }">
								</c:when>
								<c:otherwise>
									<input type="button" value="상영재개" class="isUseIngBtn">
									<input type="hidden" value="${movie.movieNum }">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</div>
</body>
</html>
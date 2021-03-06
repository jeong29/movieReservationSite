<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/movie_reg_form.js?ver=04"></script>
<style type="text/css">
#regTableDiv {
	margin: 0 auto;
	padding: 30px;
	text-align: center;
}
#regTable {
	margin: 0 auto;
	border: 1px solid black;
	width: 700px;
	border-collapse: collapse;
}
#regTable td {
	border: 1px solid black;
	height: 30px;
}
#regTable td:nth-child(2) {
	text-align: left;
}
caption {
	text-align: center;
	font-weight: bold;
	font-size: 20px;
}
input[type="text"] {
	width: 98%;
	height: 100%;
}
select {
	height: 100%;
}
input[type="button"] {
	margin: 10px auto;
	width: 100px;
	height: 35px;
	font-weight: bold;
	color: white;
	background-color: #F24535;
	border-style: none;
}
</style>
</head>
<body>
<div id="regTableDiv">
<h2>영 화 등 록</h2>
<form action="movieReg.do" method="post" enctype="multipart/form-data" id="movieRegForm">
<table id="regTable">
	<colgroup>
		<col width="20%">
		<col width="*">
	</colgroup>
	<caption>
		
	</caption>
	<tr>
		<td>영화명</td>
		<td><input type="text" name="movieTitle" placeholder="영화제목을 입력하세요" required></td>
	</tr>
	<tr>
		<td>장르</td>
		<td>
			<c:forEach items="${genreList }" var="genreInfo" varStatus="status">
				<input type="checkbox" value="${genreInfo.genreNum }" name="genres">${genreInfo.genreName }&nbsp;
				<c:if test="${(status.index + 1) % 5 eq 0 and status.index ne 0 }">
					<br>
				</c:if>
			</c:forEach>
		</td>
	</tr>
	<tr>
		<td>개봉일</td>
		<td><input type="date" name="movieOpenDate" required></td>
	</tr>
	<tr>
		<td>상영시간</td>
		<td>
			<input type="text" name="movieRunningTime" placeholder="숫자를 입력하세요" required>
		</td>
	</tr>
	<tr>
		<td>관람등급</td>
		<td>
			<select id="selectRating" name="ratingNum">
				<option value="0">관람등급선택</option>
				<c:forEach items="${ratingList }" var="ratingInfo">
					<option value="${ratingInfo.ratingNum}">${ratingInfo.ratingName }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>감독</td>
		<td><input type="text" name="movieDerector" placeholder="감독이름을 입력하세요" required></td>
	</tr>
	<tr>
		<td>배우</td>
		<td><input type="text" name="movieActors" placeholder="배우이름을 입력하세요" required></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea name="movieContent" rows="25" cols="75" placeholder="내용을 입력하세요(줄거리 등)" ></textarea></td>
	</tr>
	<tr>
		<td>첨부파일</td>
		<td><input type="file" name="file"></td>
	</tr>

</table>
<input type="button" value="등록"  id="insertBtn"/>
<input type="button" value="취소"  id="cancellBtn"/>
</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스케쥴 등록 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
#scheduleRegDiv {
	margin: 0 auto;
	padding: 0;
	text-align: center;
}
#scheduleRegTable {
	margin: 10px auto;
	border: 1px solid black;
	width: 700px;
	border-collapse: collapse;
}
#scheduleRegTable td{
	border: 1px solid black;
	height: 30px;
}
#scheduleRegTable td:nth-child(1){
	font-weight: bold;
}
#scheduleRegTable td:nth-child(2){
	text-align: left;
}

input[type="text"], select {
	width: 98%;
	height: 100%;
}
input[type="button"], input[type="submit"] {
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
<div id="scheduleRegDiv">
<h2>스 케 쥴 등 록</h2>
<form action="scheduleReg.do" method="post" enctype="multipart/form-data" id="scheduleRegForm">
<table id="scheduleRegTable">
	<colgroup>
		<col width="30%">
		<col width="*">
	</colgroup>
	<tr>
		<td>영화</td>
		<td>
			<select id="selectMovie" name="movieNum">
				<option value="0">영화 선택</option>
				<c:forEach items="${movie }" var="movieInfo">
					<option value="${movieInfo.movieNum }">${movieInfo.movieTitle }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>상영관</td>
		<td>
			<select id="selectScreen" name="ScreenNum">
				<option value="0">상영관 선택</option>
				<c:forEach items="${screen }" var="screenInfo">
					<option value="${screenInfo.screenNum }">${screenInfo.screenName }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>영화 시작 시간</td>
		<td>
			<input type="datetime-local" name="start">
		</td>
	</tr>
</table>
<input type="submit" value="등록" id="insertBtn"/>
<input type="button" value="취소"  id="cancellBtn"/>
</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영관 등록 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/movie_screen_reg_form.js?ver=02"></script>
<style type="text/css">
#regDiv {
	margin: 0 auto;
	padding: 30px;
	text-align: center;
}
#regTable {
	margin: 10px auto;
	border: 1px solid black;
	width: 700px;
	border-collapse: collapse;
}
#regTable td {
	border: 1px solid black;
	height: 35px;
}
#regTable td:nth-child(1) {
	font-weight: bold;
}
#regTable td:nth-child(2) {
	text-align: left;
}
input[type="text"] {
	width: 98%;
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
<div id="regDiv">
<h2>상 영 관 등 록</h2>
<form action="screenReg.do" method="post" enctype="multipart/form-data" id="screenRegForm">
<table id="regTable">
	<colgroup>
		<col width="25%">
		<col width="*">
	</colgroup>
	<tr>
		<td>상영관 명</td>
		<td>
			<input type="text" name="screenName" placeholder="상영관 명을 입력하세요" required>
		</td>
	</tr>
	<tr>
		<td>총 좌석 수</td>
		<td>
			<input type="text" name="seatCnt" id="seatCnt" placeholder="총 좌석 수를 입력하세요" required>
		</td>
	</tr>
	<tr>
		<td>좌석 열 개수</td>
		<td>
			<input type="text" name="seatColCnt" id="seatColCnt" placeholder="좌석 열 개수를 입력하세요" required>
		</td>
	</tr>
	<tr>
		<td>티켓 가격</td>
		<td>
			<input type="radio" name="price" checked="checked" value="5000"> 5000원
			<input type="radio" name="price" value="7000"> 7000원
			<input type="radio" name="price" value="8000"> 8000원
			<input type="radio" name="price" value="10000"> 10,000원
		</td>
	</tr>
</table>
<input type="button" value="등록" id="insertBtn"/>
<input type="button" value="취소"  id="cancellBtn"/>
</form>
</div>
</body>
</html>
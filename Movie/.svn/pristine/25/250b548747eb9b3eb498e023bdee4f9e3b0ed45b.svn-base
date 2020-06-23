<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일 문의 상세보기</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/notice_detail.js?ver=07"></script> -->
<style type="text/css">
.container{
	width: 1200px;
	margin: 0 auto;
	align-content: center;
	
}

#header, #content, #answer {
	width: 90%;
	border: 1px solid lightgray;
	margin: 0 auto;
}

#answerTable {
	margin: 0 auto;
}
#answerTable table {
	margin: 0 auto;
		
}
#listBtn{
	margin: 10px auto;
	width: 100px;
	height: 35px;
	font-weight: bold;
	color: white;
	background-color: #F24535;
	border-style: none;
}

#updateBtn, #deleteBtn {
	margin: 10px auto;
	width: 100px;
	height: 35px;
	font-weight: bold;
	color: white;
	background-color: rgb(61,157,242);
	border-style: none;
}


</style>
</head>
<body>


<div id="container">
	<div id="header">
	
	<h3>${otoDetail.memberId }님의 문의 내역입니다</h3>
		<table>
			<tr>
				<td>&nbsp;&nbsp;<strong>분 류 </strong> : ${otoDetail.otoContact }</td>			
				<td>&nbsp;&nbsp;<strong>문 의</strong> : ${otoDetail.otoSort }</td>			
			</tr>
		</table>
	</div>
	<div id="content">
		<table>
			<tr>
				<td>&nbsp;&nbsp;<strong>제 목</strong></td>			
				<td> ${otoDetail.otoTitle } </td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;<strong>내 용</strong> </td>	
				<td> ${otoDetail.otoContent }</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;<strong>작성 날짜</strong> </td>	
				<td> ${otoDetail.otoCreateDate } </td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;<strong>파 일</strong></td>
				<td> <img alt="" src="upload/${otoDetail.otoFile }"> </td>
			</tr>
			
		</table>
	</div>
	
	<h3>${otoDetail.memberId }님에게 답변하기</h3>
	<form action="oneToOneUpdate.do" method="post">
	<input type="hidden" value="${otoDetail.otoNum }" name="otoNum"/>
	<div id="answer">
		<table id="answerTable">
			<tr>
				<td><textarea rows="20" cols="80%;" name="otoAnswer"></textarea></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="고객에게 전송"/>
				</td>
			</tr>
		
		</table>
	</div>
	</form>
</div>
</body>
</html>



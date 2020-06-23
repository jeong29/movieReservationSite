<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일 문의 상세보기 : 고객</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/oneToOne_detail.js?ver=02"></script>
<link rel="stylesheet" href="css/member/oneToOne_detail.css?ver=13">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="container">
	<table border="1">
		<tr  class="title">
			<td><b>${detail.otoContact } | ${detail.otoSort }</b></td>
				<td><b>작 성 일 :</b> ${detail.otoCreateDate }</td>
		</tr>
			<tr>
				<td colspan="2"><i class="fab fa-quora"></i><b> ${detail.otoTitle }</b></td>
 			</tr>
			<tr class="title">		
				<td colspan="2" >${detail.otoContent }</td>
		<c:choose>
			<c:when test="${empty detail.otoAnswer  }">
				<tr class="otoAnswer">
					<td colspan="2"><b> A </b> 답변이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr class="otoAnswer" >
					<td colspan="2"><b> A </b> ${detail.otoAnswer }</td>
				</tr>
			</c:otherwise>
		</c:choose>
	<tr>
		<td colspan="2">
			<input type="button" value="목록" id="listBtn"/>
			<input type="button" value="삭제" id="deleteBtn"/>
			<input type="hidden" value="${detail.otoNum }" id="otoNum"/>
		</td>
	</tr>
	</table>	
</div>
</body>
</html>
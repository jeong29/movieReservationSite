<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석 선택</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/chooseSeat.js?ver=37"></script>
<link rel="stylesheet" href="css/reservation/chooseSeat.css?ver=17">
</head>
<body>
<div class="seatDiv">
	<br>
	<br>
	<h2>SCREEN</h2>
	<br>
	<input type="hidden" id="movieTitle" value="${movieTitle} " >
	<input type="hidden" id="screenName" value="${seatList[0].screenName} " >
	<input type="hidden" id="scheduleStart" value="${seatList[0].scheduleStart} " >
	<input type="hidden" id="scheduleNum" value="${seatList[0].scheduleNum} " >
	<table class="seatTable">
		<tr>
			<c:forEach items="${seatList }" var="seat" varStatus="status">
				<td class="${seat.isReserved }" data-isSelect="N" data-bookNum="${seat.bookNum }" >${seat.rowNum }${seat.colNum }</td>
				<c:if test="${(status.index + 1) % colCnt.seatColCnt eq 0}">
					</tr>
					<tr>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	<input type="button" value="상영 일정 보기" id="goScheduleListBtn" onclick="location.href='scheduleList.do?movieNum=${sessionScope.MOVIE_INFO.movieNum}'"/>
	<input type="button" value="예매" id="reservationBtn" />
	<c:if test="">
	
	</c:if>
	<input type="hidden" id="movieTitle" value="${sessionScope.MOVIE_INFO.movieTitle } }">
	<input type="hidden" id="" value="">
</div>
</body>
</html>
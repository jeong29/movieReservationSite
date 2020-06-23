<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 상영 일정 조회</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/adminScheduleList.js?ver=60"></script>

<style type="text/css">
#scheduleDiv h2 {
	margin-top: 100px;
	margin-bottom: 20px;
	padding: 0;
}

#scheduleDiv .choose {
	font-size: 12px;
}

#scheduleDiv .choose span {
	cursor: pointer;
}

#scheduleTable {
	margin: 20px auto;
	width: 90%;
	padding: 0;
	border-collapse: collapse;
}

#scheduleTable caption span {
	cursor: pointer;
}

#scheduleTable td, th {
	border: 1px solid black;
}

.deleteBookNSchedule {
	width: 50px;
	height: 25px;
	font-weight: bold;
	color: white;
	background-color: #F24535;
	border-style: none;
}
</style>
</head>
<body>
	<div id="scheduleDiv">
		<h2>상 영 일 정 조 회</h2>
		
		<div class="choose">
			<span class="wholeBtn">전체보기</span><span class="scheduleBtn">예정일정보기</span>
		</div>
		
		<table id="scheduleTable">
			<%-- <colgroup>
				<col width="20%">
				<col width="20%">
				<col width="5%">
				<col width="*">
				<col width="7%">
				<col width="4%">
			</colgroup>
			<tr>
				<th>영화명</th>
				<th>상영관명</th>
				<th>총 좌석</th>
				<th>상영시간</th>
				<th>러닝타임</th>
				<th>비고</th>
			</tr>
			<c:choose>
				<c:when test="${list.size() eq 0 }">
					<tr>
						<td colspan="6">예정된 일정이 없습니다</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="schedule" varStatus="status">
						<tr>
							<td>${schedule.movieTitle }</td>
							<td>${schedule.screenName }</td>
							<td>${schedule.seatCnt }</td>
							<td>${fn:substring(schedule.scheduleStart, 0, 16) }</td>
							<td>${schedule.movieRunningtime }분</td>
							<td><input type="hidden" value="${schedule.scheduleNum }">
								<input type="button" value="삭제" class="deleteBookNSchedule">
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose> --%>
		</table>
	</div>
</body>
</html>
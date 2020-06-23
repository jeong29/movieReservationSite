<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 무비</title>
<script src="https://kit.fontawesome.com/148cfa54ae.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/my_page.js?ver=11"></script>
<link rel="stylesheet" href="css/member/my_page.css?ver=22">
</head>
<body>
	<div id="myMovieDiv">
		<table id="myMoiveTable">
			<colgroup>
				<col width="50%">
				<col width="50%">
			</colgroup>
			<caption>MY MOVIE</caption>
			<tr>
				<td colspan="2">
					<div class="box con1">
						<font class="sub_title">${sessionScope.MEMBER_INFO.memberName }</font>님
						환영합니다!
					</div>
					<div class="box con2">
						<font class="sub_title">회원 등급 </font> &nbsp;|&nbsp;
						${sessionScope.MEMBER_INFO.memberShip }
					</div>

				</td>
			</tr>
			<tr>
				<td>

					<div class="box con1">
						<font class="sub_title">POINT</font><br>
						<br> 
						<font class="sub_cont">
							남은 POINT가 100P이상이면 즉시 사용할 수 있습니다.
						</font>

					</div>
					<div class="box con2">
						<font class="sub_title">${memberInfo.memberPoint}
							<i class="fas fa-parking"></i>
						</font>
					</div>

				</td>

				<td>
					<div class="box con1">
						<font class="sub_title">보유 쿠폰 정보</font><br>
						<br> <font class="sub_cont">사용 가능한 쿠폰</font><br> <font
							class="sub_cont">사용한 쿠폰</font>
					</div>
					<div class="box con2">
						<font class="sub_title">0 </font>매<br>
						<br> <font class="sub_title">0 </font><font id="sub_cont">매</font><br>
						<font class="sub_title">0 </font><font id="sub_cont">매</font>
					</div>
				</td>
			</tr>
		</table>

		<br>
		<br>

		<table id="myReservTable">
			<caption>MY 예매 내역</caption>
			<colgroup>
				<col width="25%">
				<col width="25%">
				<col width="30%">
				<col width="20%">
			</colgroup>
			<tr>
				<td>영화명</td>
				<td>상영관명</td>
				<td>관람일시</td>
				<td>좌석</td>
			</tr>
			
			<c:choose>
				<c:when test="${bookList.size() eq 0 }">
					<tr>
						<td colspan="4">예매한 내역이 없습니다</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${bookList }" var="list">
						<tr>
							<td>${list.movieTitle }</td>
							<td>${list.screenName }</td>
							<td>${list.scheduleStart }(${list.dy })</td>
							<td>${list.rowNum }${list.colNum }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
			
		</table>

		<br>
		<br>

		<table id="myOtoListTable">
			<caption>MY 정보 관리</caption>
			<tr>
				<td>
					<div class="container">
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">
							<font id="sub_title">1:1 문의 내역</font></li>
							<li class="tab-link" data-tab="tab-2"><font id="sub_title">회원정보관리</font></li>
						</ul>

						<div id="tab-1" class="tab-content current">
							<table id="otoTable">
								<colgroup>
									<col width="10%">
									<col width="20%">
									<col width="30%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<tr>
									<th>번호</th>
									<th>문의 / 분류</th>
									<th>제목</th>
									<th>작성일</th>
									<th>상태</th>
								</tr>
								<c:choose>

									<c:when test="${otoList.size() eq 0 }">
										<tr>
											<th colspan="5">등록한 일대일 문의가 없습니다</th>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${otoList }" var="oto">
											<tr>
												<td>${oto.otoNum }</td>
												<td>${oto.otoContact }/ ${oto.otoSort }</td>
												<td><a href="otoDetail.do?otoNum=${oto.otoNum }">${oto.otoTitle }
												</a></td>
												<td>${oto.otoCreateDate }</td>
												<td><span class="otoIsUse">${oto.otoIsUse }</span> </td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</table>
						</div>

						<div id="tab-2" class="tab-content">
							<table id="infoTable">
								<tr>
									<th>회원정보 수정을 원하시면 비밀번호를 다시 한 번 입력해주세요</th>
								</tr>
								<tr>
									<td>
									<input type="password" id="memberPasswordChk" placeholder="비밀번호" /> 
									<input type="button" value="확인" id="passwordChk" /> 
									<input type="hidden" value="${memberInfo.memberId }" id="memberId" />
									<input type="hidden" value="${memberInfo.memberPassword }" id="memberPassword" /> 
									</td>
								</tr>
							</table>
									<a href="#" id="joinOut"
										onclick="joinOut('${memberInfo.memberId}');">탈퇴하기</a>


						</div>

					</div>
				</td>
			</tr>
		</table>

	</div>
</body>
</html>
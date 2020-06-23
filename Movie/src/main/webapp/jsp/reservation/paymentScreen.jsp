<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/148cfa54ae.js" crossorigin="anonymous"></script>
<script src="js/paymentScreen.js?ver=18"></script>
<link rel="stylesheet" href="css/reservation/paymentScreen.css?ver=04">
</head>
<body>
	<div id="payDiv">
		<!-- =================================== 주문/결제 테이블 =================================== -->
		<table id="payTable">
			<caption>주문/결제</caption>
			<colgroup>
				<col width="20%">
				<col width="12%">
				<col width="*%">
				<col width="12%">
				<col width="20%">
			</colgroup>
			<tr>
				<td rowspan="4">
					<div id="movieImg">
						<img src="upload/${sessionScope.MOVIE_INFO.movieImage} " title="${sessionScope.MOVIE_INFO.movieTitle}" alt="${sessionScope.MOVIE_INFO.movieTitle}" >
					</div>
				</td>
				<td colspan="4">
					<h3>${sessionScope.MOVIE_INFO.movieTitle }</h3>
				</td>
			</tr>
			<tr>
				<td><font class="title">상영일</font></td>
				<td>${list[0].scheduleStart.substring(0, 10)}(${list[0].dy })</td>
				<td><font class="title">상영시간</font></td>
				<td>${list[0].scheduleStart.substring(11, 16) } ~ ${list[0].scheduleEnd.substring(11, 16)}<!-- 마치는 시간 --></td>
			</tr>
			<tr>
				<td><font class="title">상영관</font></td>
				<td>${list[0].screenName }</td>
				<td><font class="title">관람인원</font></td>
				<td>${list.size() } 명</td>
			</tr>
			<tr>
				<td><font class="title">좌석</font></td>
				<td>
				<c:forEach items="${list}" var="seat" varStatus="status">
					${seat.rowNum }${seat.colNum }&nbsp; 
				</c:forEach>
				</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4"><font class="total">총 주문금액</font></td>
				<td><font class="total price">${price }</font><font class="sub"> 원</font></td>
			</tr>
		</table>
		<br> <br>

		<!-- =================================== 포인트 테이블 =================================== -->
		<table id="pointTable">
			<colgroup>
				<col width="50%">
				<col width="*">
			</colgroup>
			<caption>포인트 사용</caption>
			<tr class="main_title">
				<td><font class="point">POINT</font></td>
			</tr>
			<tr>
				<td><font class="title"> <br> 1P부터 즉시 사용할 수 있습니다. <br> <br>
						<hr>
				</font></td>
			</tr>
			<tr>
				<td>
					<table id="usePointTable">
						<tr>
							<td>
								현재 포인트 : &nbsp;
							</td>
							<td>
								<span id="point">${sessionScope.MEMBER_INFO.memberPoint }</span> <i class="fas fa-parking"></i> 
							</td>
						</tr>
						<tr>
							<td>
								사용 포인트 : &nbsp;
							</td>
							<td>
								<input type="text" class="usePoint" value="0"> <i class="fas fa-parking"></i>
							</td>
						</tr>
						<tr>
							<td>
								잔여 포인트 : &nbsp;
							</td>
							<td>
								<span id="lastPoint">${sessionScope.MEMBER_INFO.memberPoint }</span> <i class="fas fa-parking"></i>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br> <br>

		<!-- =================================== 그 외 결제수단 =================================== -->
		<table id="payTable2">
			<caption>최종결제수단</caption>
			<tr class="main_title">
				<td><font class="point">그 외 결제수단</font></td>
			</tr>
			<tr>
				<td>
					<table id="selectPayTable">
						<tr>
							<td>
								<input type="radio" name="payWay" value="card">신용카드
								<input type="radio" name="payWay" value="phone">휴대폰결제
							</td>
						</tr>
						<tr>
							<td>
								<!-- =================================== 카드 선택 =================================== -->
								<div id="selectCardDiv">
									카드종류 <select id="selectCardList">
										<option value="0">&nbsp;카드를 선택하세요</option>
										<option value="1">신한</option>
										<option value="2">우리</option>
										<option value="3">국민</option>
										<option value="4">하나</option>
										<option value="5">농협</option>
										<option value="6">우체국</option>
									</select>
								</div>
								<!-- =================================== 휴대폰 결제 =================================== -->
								<div id="phoneDiv">
									<input type="number" placeholder="휴대폰번호 11자리" maxlength="11" oninput="maxLengthCheck(this)" />
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br> <br>

		<!-- =================================== 최종 Div =================================== -->
		<div id="finallyDiv">
			<div id="beforeDiv">
				<div id="total_box">
					<div id="beforeBox">
						<a href="#"><i class="fas fa-arrow-left"> 이전단계</i></a>
					</div>
				</div>
			</div>
			<div id="totalDiv">
				<div id="total_box">
					<div class="total_box">
						<table id="totalTalbe">
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>
							<tr>
								<td colspan="2"><font class="total_title">주문금액</font></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2" class="won"><span id="price">${price }</span>원</td>
							</tr>
						</table>
					</div>
					<div class="total_box">
						<table id="totalTalbe">
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>
							<tr>
								<td colspan="2"><font class="total_title">할인금액</font></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2" class="won">(-)<span class="usePoint">0</span>원</td>
							</tr>
						</table>
					</div>
					<div class="total_box">
						<table id="totalTalbe">
							<colgroup>
								<col width="50%">
								<col width="50%">
							</colgroup>
							<tr>
								<td colspan="2"><font class="total_title">총 결제 금액</font>
								<br>(주문금액 - 할인금액)</td>
							</tr>
							<tr>
								<td colspan="2" class="won"><span id="total_price">${price }</span>원</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="button" value="결제하기" id="buyBtn">
									<input type="hidden" value="${bookNums }" id="bookNums">
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
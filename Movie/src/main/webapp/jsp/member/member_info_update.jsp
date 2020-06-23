<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/member_info.js?ver=07"></script>
<link rel="stylesheet" href="css/member/member_info_update.css?ver=06">
</head>
<body>
<div id="container">
<form action="memberInfoUpdate.do" method="post">
	<table id="memberInfoTable" >
		<colgroup>
			<col width="30%">
			<col width="*">
		</colgroup>
		<caption>
			<label>수정 화면입니다</label>
		</caption>
		<tr>
			<th><label>아이디</label></th>
			<td><input type="hidden" name="memberId" value="${info.memberId }"/>${info.memberId }</td>
		</tr>
		<tr>
			<th><label>비밀번호</label></th>
			<td>
			<input type="password" value="${info.memberPassword }" name="memberPassword" required="required"/></td>
		</tr>
		<tr>
			<th><label>이 름</label></th>
			<td><input type="text" name="memberName" value="${info.memberName }" required="required"/></td>
		</tr>
		<tr>
			<th><label>전화번호</label></th>
			<td><input type="tel" id="memberTel" value="${info.memberTel }" required="required" name="memberTel" placeholder=" - 없이 입력"/></td>
		</tr>
		<tr>
			<th><label>포인트</label></th>
			<td> ${info.memberPoint } P</td>
		</tr>
	</table>
	<input type="submit" value="수정완료" id="setBtn"/>
</form>	
</div>
	

</body>
</html>
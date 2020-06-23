<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>영화관 로그인 페이지</title>
<link rel="stylesheet" href="css/member/login_form.css?ver=07">
</head>
<body>
<div id="logo">
	<a href="movieMain.do"><img alt="" src="/img/logo.png"></a>
</div>
<div id="loginDiv">
	<form action="loginResult.do" method="post">
		<table id="loginTable">
			<tr>
				<td>
					<input type="text" placeholder="  아이디" name="memberId" required/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="password" placeholder="  비밀번호" name="memberPassword" required/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="로그인"  id="loginBtn"/>
				</td>
			</tr>
			<tr>
				<td>
					<a href="findMemberId.do">아이디 찾기</a>	&nbsp;|&nbsp; 
					<a href="findMemberPassword.do">비밀번호 찾기</a>&nbsp;|&nbsp; 
					<a href="joinForm.do">회원가입</a>
				</td>
			</tr>
		</table>
		
	</form>
</div>
</body>
</html>
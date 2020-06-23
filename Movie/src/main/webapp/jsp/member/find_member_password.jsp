<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>회원 아이디 찾기</title>
<link rel="stylesheet" href="css/member/find_member_password.css?ver=00">
</head>
<body>
<div id="logo">
	<a href="movieMain.do"><img alt="" src="/img/logo.png"></a>
</div>
<div id="findDiv">
	<form action="findMemberPasswordResult.do" method="post">
		<table id="findMemberPasswordTable">
			<tr>
				<td>
					<input type="text" placeholder=" 회원 아이디" name="memberId" required/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" placeholder="  회원 이름" name="memberName" required/>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="비밀번호 찾기"  id="findBtn"/>
				</td>
			</tr>
		</table>
		
	</form>
</div>
</body>
</html>
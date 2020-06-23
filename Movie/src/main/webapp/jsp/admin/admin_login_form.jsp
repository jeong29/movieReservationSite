<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>관리자 로그인 페이지</title>
<style type="text/css">
body {
	background-color: #0D0D0D;
}
#loginDiv {
	padding: 20px;
	margin: 30px auto;
	text-align: center;
	width: 700px;
	height: 400px;
	background-color: darkgray;
	border-radius: 20px;
}
#logo {
	margin: 70px auto;
	width: 900px;
	height: 100px;
}
#logo img {
	width: 100%;
}
h1 {
	text-align: center;
	font-size: 40px;
}
#loginTable {
	/* border: 1px solid black; */
	border-collapse: collapse;
	margin: 20px auto;
	width: 600px;
}
#loginTable td {
	height: 70px;
	padding: 20px;
	/* border: 1px solid black; */
}
#loginTable tr:nth-child(4), a{
	text-decoration: none;
	color: gray;
}
input[type="text"], input[type="password"], input[type="submit"] {
	width: 90%;
	height: 60px;
	font-size: 25px;
}
#loginBtn {
	height: 70px;
	font-weight: bold;
	background-color: white;
	border-style: none;
}
</style>
</head>
<body>
<div id="logo">
	<a href="movieMain.do"><img alt="" src="/img/logo2.png"></a>
</div>
<h1>관리자 로그인</h1>
<div id="loginDiv">
	<form action="adminLoginResult.do" method="post">
		<table id="loginTable">
			<tr>
				<td><input type="text" placeholder="  아이디" name="memberId" /></td>
			</tr>
			<tr>
				<td><input type="password" placeholder="  비밀번호" name="memberPassword" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"  id="loginBtn"/></td>
			</tr>
		</table>
		
	</form>
</div>
</body>
</html>
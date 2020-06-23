<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 메인</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}

#container {
	margin: 0 auto;
	text-align: center;
	width: 100%;
	height: 100vh;
	box-sizing: border-box;
}
#sidebar {
	width: 15%;
	height: 100vh;
	/* border: 1px solid black; */
	box-sizing: border-box;
	float: left;
	background-color: #0D0D0D;
}
#contents {
	width: 85%;
	height: 100%;
	/* border: 1px solid rgb(94, 157, 242); */
	box-sizing: border-box;
	float: right;
}
</style>
</head>
<body>
<div id="container">
	<!-- 사이드바 부분 -->
	<div id="sidebar">
		<jsp:include page="admin_side.jsp"></jsp:include>
	</div>
	
	<!-- 컨텐츠 부분 -->
	<div id="contents">
		<jsp:include page="${page }"></jsp:include>
	</div>
</div>
</body>
</html>
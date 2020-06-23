<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과 확인</title>
<c:choose>
	<c:when test="${result eq 1 }">
		<script type="text/javascript">
			alert('회원가입 성공! 로그인 화면으로 갑니다');
			location.href = 'loginForm.do';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('회원 정보를 다시 입력하세요!');
			location.href = 'joinForm.do';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>
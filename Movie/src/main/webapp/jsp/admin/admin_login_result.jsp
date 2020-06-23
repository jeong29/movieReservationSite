<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 결과 확인</title>
<c:choose> 
	<c:when test="${sessionScope.MEMBER_INFO.memberShip eq 'admin' }">
		<script type="text/javascript">
			location.href='memberList.do';
		</script> 
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('관리자가 아닙니다.');
			location.href='loginForm.do';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>
</body>
</html>
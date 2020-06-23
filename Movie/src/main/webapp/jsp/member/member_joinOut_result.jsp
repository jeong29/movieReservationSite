<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 탈퇴 완료</title>
	<c:choose>
		<c:when test="${result eq 1 }">
			<script type="text/javascript">
				alert('회원 탈퇴 완료!');
				location.href = 'movieMain.do';
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('회원 탈퇴 실패 ');
				location.href = 'memberInfoUpdate.do';
			</script>
		</c:otherwise>
	
	</c:choose>
	
</head>
<body>

</body>
</html>
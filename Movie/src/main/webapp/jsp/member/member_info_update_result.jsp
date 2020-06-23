<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 완료</title>
	<c:choose>
		<c:when test="${result eq 1 }">
			<script type="text/javascript">
				alert('회원정보 수정 완료!');
				location.href = 'memberInfo.do';
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('다시 입력 바랍니다');
				location.href = 'memberInfoUpdateForm.do';
			</script>
		</c:otherwise>
	
	</c:choose>
	
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기 결과 확인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
 <input type="hidden" id="memberPassword" value="${member.memberPassword }" />

  <c:choose>
	<c:when test="${not empty member}">
		<script type="text/javascript">
		   var a = $('#memberPassword').val();
           alert('회원님의 비밀번호는 ' + a + ' 입니다.');
           location.href = 'loginForm.do';

		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		 alert('일치하지 않습니다. 다시입력해주세요');
         location.href = 'findMemberPassword.do';

		</script>
	</c:otherwise>
</c:choose>
</body>
</html>
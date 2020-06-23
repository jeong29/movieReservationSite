<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기결과 확인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
  <input type="hidden" id="memberId" value="${member.memberId }" />
  <c:choose>
	<c:when test="${not empty member}">
		<script type="text/javascript">
			 var a = $('#memberId').val();

         	 var b = confirm('회원님의 아이디는 ' + a + ' 입니다. 비밀번호찾기 하시겠습니까?');

         	 if (b) {
                 location.href = 'findMemberPassword.do';
              } else {
                 location.href = 'loginForm.do';
              }

         	 
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		   alert('존재하지 않는 이름 및 전화번호 입니다.');
           location.href = 'findMemberId.do';
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>
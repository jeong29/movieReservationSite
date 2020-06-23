<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 일대일문의 등록 결과 확인</title>
<c:choose>
	<c:when test="${result eq 1}">
		<script type="text/javascript">
			alert('등록 성공!');
			location.href='memberOneToOneList.do';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('다시 등록하세요');
			location.href='memberOneToOneList.do';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>
</body>
</html>
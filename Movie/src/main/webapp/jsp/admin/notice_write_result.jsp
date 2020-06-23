<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록 결과</title>
</head>
<body>
공지사항 등록 결과입니다
<c:choose>
	<c:when test="${result eq 1 }">
		<script type="text/javascript">
		alert('공지사항 등록 성공');
		location.href = 'service.do';
		</script>		
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		alert('공지사항 등록 실패!');
		location.href = 'noticeWriteForm.do';
		</script>
	</c:otherwise>

</c:choose>
</body>
</html>
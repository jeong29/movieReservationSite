<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는질문 등록 결과</title>
</head>
<body>
자주하는질문 등록 결과입니다
<c:choose>
	<c:when test="${faqResult eq 1 }">
		<script type="text/javascript">
		alert('FAQ 등록 성공');
		location.href = 'service.do';
		</script>		
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
		alert('FAQ 등록 실패!');
		location.href = 'faqWriteForm.do';
		</script>
	</c:otherwise>

</c:choose>
</body>
</html>
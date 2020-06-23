<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일대일문의 결과 확인</title>
<c:choose>
	<c:when test="${otoResult eq 1 }">
		<script type="text/javascript">
			alert('일대일 문의 등록 성공!!');
			location.href = 'service.do';
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('일대일 문의 등록 실패!');
			location.href = 'oneToOneList.do';
		</script>
	</c:otherwise>
</c:choose>
</head>
<body>

</body>
</html>
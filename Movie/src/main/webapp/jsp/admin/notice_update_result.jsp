<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록 결과</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<input type="hidden" value="${noticeVO.noticeNum }" id="noticeNum" name="noticeNum"/>
<c:choose>
	<c:when test="${updateResult eq 1 }">
		<script type="text/javascript">
			alert('공지사항 수정 성공');
			location.href = 'noticeDetail.do?noticeNum=' + $('#noticeNum').val();
		</script>		
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('공지사항 수정 실패!');
			location.href = 'noticeUpdateForm.do?noticeNum='+ $('#noticeNum').val();
		</script>
	</c:otherwise>

</c:choose>
</body>
</html>
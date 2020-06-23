<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스케줄 등록 결과</title>
</head>
<body>
<script type="text/javascript">
	var context = confirm('계속 등록하겠습니까?');
		
	if(context) { // true시, 스케줄 등록
		location.href='scheduleRegForm.do';
	}
	else { // false시, 스케줄 조회
		location.href='selectScheduleListAdmin.do';
	}
</script>
</body>
</html>
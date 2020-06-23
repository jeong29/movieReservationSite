<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 등록 결과</title>

</head>
<body>
<script type="text/javascript">
	var context = confirm('계속 등록하겠습니까?');
		
	if(context) { 
		location.href='movieRegForm.do';
	}
	else { 
		location.href='selectScreenList.do';
	}
</script>
</body>
</html>
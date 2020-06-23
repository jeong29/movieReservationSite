<!-- to민희언니 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 폼</title>
<link rel="stylesheet" href="css/admin/notice_update_form.css?ver=00">

</head>
<body>
<div id="updateDiv">	
	<form action="noticeUpdate.do" method="post">
	<input type="hidden" name="noticeNum" value="${notice.noticeNum }" id="noticeNum"/>
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="noticeTitle" value="${notice.noticeTitle }"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="20" cols="30" name="noticeContent">${notice.noticeContent }</textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정" id="updateBtn"/>
				<input type="button" value="뒤로가기" id="backBtn" onclick="history.back()"/></td>
		</tr> 
	</table>
</form>
</div>	


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어쩌다 발견한 영화</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/148cfa54ae.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/main.css?ver=01">
<script type="text/javascript">
$(document).ready(function(){
	// TOP 이미지 클릭시
	$(document).on('click', '.top', function() {
		$('html, body').animate({scrollTop : 0}, 400);
		return false;
	});0
});

// 함수
(function($) {

})(jQuery);
</script>
</head>
<body>
<div id="container">
<!-- 헤더 부분 -->
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>

<!-- 컨텐츠 부분 -->
<div id="contents">
	<jsp:include page="${page }"></jsp:include>
</div>

<!-- 푸터 부분 -->
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
<a href="#" class="top"><i class="fas fa-arrow-circle-up"></i></a>
</div>
</body>
</html>
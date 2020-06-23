// 이벤트
$(document).ready(function(){
	// 댓글 버튼 클릭 시 이동
	$(document).on('click','#replyBtn', function() {
		var replyContent = $('#replyContent').val();
		var movieNum = $('#movieNum').val();
		var scoreNum = $('#selectScore option:selected').val();

		location.href = 'insertReply.do?replyContent=' + replyContent + '&movieNum=' + movieNum + '&scoreNum=' + scoreNum;
	});
	
	
	// 예매 버튼 클릭 시 
	$(document).on('click','#reserBtn', function() {
		var moiveNum = $('#movieNum').val();
		
		// 로그인 체크
		var memberId = $('#memberId').val();
		if(memberId == null || memberId == ''){
			alert('로그인 후에 예매 가능합니다');
			location.href='loginForm.do';
		}
		else {
			location.href='scheduleList.do?movieNum=' + moiveNum;
		}
	});
	
	// 목록가기 버튼 클릭 시 
	$(document).on('click','#listBtn', function() {
			location.href='movieMain.do';
	});
	
});

// 함수
(function($) {

})(jQuery);
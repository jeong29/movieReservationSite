// 이벤트
$(document).ready(function(){
	// 수정 버튼 클릭시
	$(document).on('click', '#updateBtn', function() {
		var memberId = $('#memberId').text();
		location.href = 'memberInfoUpdateForm.do?memberId=' + memberId;
		
	});
	
	// 마이페이지 버튼 클릭시
	$(document).on('click', '#myPageBtn', function() {
		location.href = 'myPage.do';
		
	});
	
	//전화번호 입력시
	$(document).on('keyup','#memberTel' , function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});

});

// 함수
(function($) {

})(jQuery);
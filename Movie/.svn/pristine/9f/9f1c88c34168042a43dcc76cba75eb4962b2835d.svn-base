// 이벤트
$(document).ready(function(){
	$('.adminGrant').each(function(){
		var memberShip = $(this).parent().prev().text();
		if(memberShip == 'admin'){
			$(this).hide();			
		}
	});
	
	

		
		
	// 비고사항 버튼 등록시
	$(document).on('click', '.adminGrant', function() {
		var memberId = $(this).attr('data-memberId');
		// var memberShip = $('.adminGrant').attr('data-memberShip');
		
		
		
		$.ajax({
			url: 'adminGrantAjax.do',
			type: 'post',
			data: {'memberPoint' :0, 'memberShip':'admin', 'memberId':memberId},
			success: function(result) {
				if(result == 1){
					alert('등록 성공');
					location.href = 'memberList.do';
					$(this).hide();
					return true;
				}
				else {
					alert('등록 실패');
				}
			},
			error: function() {
				alert('등록 실패');
			}
		});
		
		
		
	});
	
});

// 함수
(function($) {

})(jQuery);
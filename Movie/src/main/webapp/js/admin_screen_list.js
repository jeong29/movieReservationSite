$(document).ready(function(){
	$(document).on('click', '.serviceable', function() {
		var update = $(this).val();
		var isServiceable;
		var screenName = $(this).parent().prev().prev().text();
		var serviceable = '';
		var screenNum = $(this).prev().val();
		if(update == '폐장') {
			isServiceable = confirm(screenName + '에 더 이상 상영 일정 등록을 못 하게 막으시겠습니까?')
			serviceable = 'N';
		}
		else if(update == '재개장') {
			isServiceable = confirm(screenName + '에 다시 상영 일정을 등록할 수 있도록 하시겠습니까?')
			serviceable = 'Y';
		}
		if(isServiceable) {
			$.ajax({
				url: 'updateServiceableToN.do',
				type: 'post',
				data: {'screenNum' : screenNum, 'serviceable' : serviceable},
				success: function(result) {
					if(result == 1){
						alert('처리 완료');
						location.href = 'selectScreenList.do';
					}
					else {
						alert('처리 실패1');
					}
				},
				error: function() {
					alert('처리 실패2');
				}
			});
		}
	});
});

(function($) {
	
})(jQuery);
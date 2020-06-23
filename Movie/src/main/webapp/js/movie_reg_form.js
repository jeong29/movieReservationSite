// 이벤트
$(document).ready(function(){
	// 등록 버튼 클릭 시
	$(document).on('click','#insertBtn', function() {
		var ratingNum = $('#selectRating').val();
		
		if(ratingNum == 0){
			confirm('관람등급을 선택해주세요.');
		}
		else if($("input:checkbox[name=genres]:checked").length == 0 ) {
			confirm('장르를 최소 하나 선택해 주세요.');
		}
		else {
			$('#movieRegForm').submit();
		}
	});
	
	// 취소 버튼 클릭 시
	$(document).on('click','#cancellBtn', function() {
		location.href = 'memberList.do';
	});
	
});

// 함수
(function($) {
	
})(jQuery);
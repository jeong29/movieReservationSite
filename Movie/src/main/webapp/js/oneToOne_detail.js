// 이벤트
$(document).ready(function(){
	// 목록 버튼 클릭시
	$(document).on('click', '#listBtn', function() {
		location.href = 'myPage.do';
	});
	
	//삭제 버튼 클릭시 
	$(document).on('click','#deleteBtn', function() {
		var isDelete = confirm('정말 삭제하시겠습니까?');
		
		if(isDelete){
			var otoNum = $('#otoNum').val();
			location.href = 'otoDelete.do?otoNum='+ otoNum;
		}
	});
});

// 함수
(function($) {

})(jQuery);
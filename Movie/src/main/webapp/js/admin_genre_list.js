// 이벤트
$(document).ready(function(){
	// 장르 등록 버튼 클릭시
	$(document).on('click', '#insertGenre', function() {
		var genreName = $('#genreName').val();
		
		$.ajax({
			url: 'insertGenre.do',
			type: 'post',
			data: {'genreName' : genreName },
			success: function(result) {
				if(result == 1){
					alert('등록 성공');
					location.href = 'genreList.do';
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
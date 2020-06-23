$(document).ready(function(){
	//예매 여/부
	$('#reservationBtn').hide();
	$('.N').click(function(){
		if($(this).attr('data-isSelect') == 'N'){
			$(this).css('background', 'rgb(242, 69, 53)');
			$(this).css('color', 'rgb(255, 255, 255)');
			$(this).attr('data-isSelect', 'Y');
		}
		else{
			$(this).css('background', 'lightgray');
			$(this).css('color', 'rgb(0, 0, 0)');
			$(this).attr('data-isSelect', 'N');
		}
		
		var cnt = 0;
		$('.N').each(function(){
			if($(this).attr('data-isSelect') == 'Y'){
				cnt++;
			}
		});
		if(cnt > 0){
			$('#reservationBtn').show();
		}
		else{
			$('#reservationBtn').hide();
		}
	});
	
	//예매 클릭 시...
	$(document).on('click', '#reservationBtn', function(){
		var bookNum = '';
		var schedule = $('#scheduleNum').val();
		$('.N').each(function(){
			if($(this).attr('data-isSelect') == 'Y'){
				bookNum += $(this).attr('data-bookNum') + ',';
			}
		});
		$.ajax({
			url: 'isReserved.do',
			type: 'post',
			data: {'bookNums':bookNum},
			success: function(result) {
				if(result == 0) {
					alert('이선좌(이미 선택된 좌석)입니다.')
					location.href = 'chooseSeat.do?scheduleNum=' + $('#scheduleNum').val();
				}
				else {
					var makeReservations = confirm($('#screenName').val() + '에서' + '\n' + $('#scheduleStart').val() + '에 상영되는' + '\n' + $('#movieTitle').val() + result + '석을 예매 하시겠습니까?');
					if(makeReservations == 1) {
						location.href = 'reservation.do?bookNums=' + bookNum;
					}
					else {
						location.href = 'chooseSeat.do?scheduleNum=' + $('#scheduleNum').val();
					}
				}
			},
			error: function(){
				alert('실패');
				location.href = 'chooseSeat.do?scheduleNum=' + $('#scheduleNum').val();
			}
		});
	});
});
(function($) {

})(jQuery);
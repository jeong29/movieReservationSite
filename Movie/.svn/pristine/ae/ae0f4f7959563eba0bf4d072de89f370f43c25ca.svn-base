$(document).ready(function() {
	$('#phoneDiv').hide();
	$('#selectCardDiv').hide();
	
	/*$(window).on("beforeunload", function (e){

		return "";
	});
*/
	// radio 타입 선택시
	$(document).on('change', 'input[type="radio"]', function() {
		var isChecked = $(this).val();

		if (isChecked == 'card') {
			$('#phoneDiv').hide();
			$('#selectCardDiv').show();
		} 
		else if (isChecked == 'phone') {
			$('#selectCardDiv').hide();
			$('#phoneDiv').show();
		}
	});
	
	// 사용 포인트 입력 시
	$(document).on('keyup', '.usePoint', function() {
		var point = parseInt($('#point').text());
		var usePoint = $('.usePoint').val();
		var lastPoint = point - usePoint;
		
		// 결제 금액
		var price = parseInt($('#price').text());
		var totalPrice = price - usePoint;
		
		if(usePoint > point) {
			alert('보유 중인 포인트보다 많습니다.');
			$('.usePoint').val('');
			$('.usePoint').text('');
			$('#lastPoint').text('');
		}
		else {
			$('#lastPoint').text(lastPoint);
			$('.usePoint').text(usePoint);
			$('#total_price').text(totalPrice);
		}
	});
	
	// 결제 버튼 클릭시
	$(document).on('click', '#buyBtn', function() {
		var memberPoint = parseInt($('#lastPoint').text()); // 잔여 포인트
		var bookNums = $('#bookNums').val(); // 예약 번호

		
		location.href = 'payScreen.do?memberPoint='+ memberPoint + '&bookNums=' + bookNums;
	});
});

// 함수
(function($) {
	
})(jQuery);

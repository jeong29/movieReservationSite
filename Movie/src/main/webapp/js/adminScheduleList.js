// 이벤트
$(document).ready(function(){
	var scheduleBtn = $('.scheduleBtn');
	var wholeBtn = $('.wholeBtn');
	scheduleBtn.hide();
	selectScheduleList();
	
	// 전체보기 클릭시
	$(document).on('click', '.wholeBtn', function() {
		wholeBtn.hide();
		scheduleBtn.show();
		selectWholeScheduleList();
	});
	
	// 예정일정 클릭시
	$(document).on('click', '.scheduleBtn', function() {
		scheduleBtn.hide();
		wholeBtn.show();
		selectScheduleList();
	});
	
	// 삭제 버튼 클릭시
	$(document).on('click', '.deleteBookNSchedule', function() {
		var is_delete = confirm('상영 일정뿐만 아니라 좌석 정보까지 모두 삭제됩니다.\n그래도 삭제하시겠습니까?')
		var scheduleNum = $(this).prev().val();
		if(is_delete){
			$.ajax({
				url: 'deleteBookNScheule.do',
				type: 'post',
				data: {'scheduleNum' : scheduleNum},
				success: function(result) {
					if(result > 0){
						alert('상영 일정과 ' + (result - 1) + '개의 좌석 정보 삭제 성공!');
						location.href = 'selectScheduleListAdmin.do';
					}
					else{
						alert('삭제 실패');
					}
				},
				error: function(){
					alert('삭제 실패');
				}
			});
		}
	});
});

// 함수
(function($) {
	// 전체보기 함수
	selectWholeScheduleList = function () {
		$.ajax({
			url : 'selectScheduleWholeList.do',
			type : 'post',
			data : {},
			success : function(result) {
				$('#scheduleTable').empty();
				
				// 리턴 받은 리스트의 갯수
				var listCnt = result.length;
				var str = '';
				
				str += '<colgroup>';
				str += '<col width="*">';
				str += '<col width="30%">';
				str += '<col width="10%">';
				str += '<col width="30%">';
				str += '<col width="10%">';
				str += '<col width="55px">';
				str += '</colgroup>';
				str += '<tr>';
				str += '<th>영화명</th>';
				str += '<th>상영관명</th>';
				str += '<th>총 좌석</th>';
				str += '<th>상영시간</th>';
				str += '<th>러닝타임</th>';
				str += '<th>비고</th>';
				str += '</tr>';
				
				if(listCnt == 0) {
					str += '<tr>';
					str += '<td colspan="6">등록된 상영 일정이 없습니다</td>';
					str += '</tr>';
				}
				else {
					$.each(result, function(index, element) {
						str += '<tr>';
						str += '<td>' + element.movieTitle + '</td>';
						str += '<td>' + element.screenName + '</td>';
						str += '<td>' + element.seatCnt + '</td>';
						str += '<td>' + element.scheduleStartString + '~' + element.scheduleEnd + '</td>';
						str += '<td>' + element.movieRunningtime + '분</td>';
						str += '<td></td>';
						str += '</tr>';
					});
				}
				// 테이블 내용 붙이기
				$('#scheduleTable').append(str);
			},
			error: function() {
				alert('조회 실패');
			}
		});
	};
	
	// 예정일정보기 함수
	selectScheduleList = function() {
		$.ajax({
			url : 'selectScheduleListAjax.do',
			type : 'post',
			data : {},
			success : function(result) {
				$('#scheduleTable').empty();
				
				// 리턴 받은 리스트의 갯수
				var listCnt = result.length;
				var str = '';
				
				str += '<colgroup>';
				str += '<col width="*">';
				str += '<col width="30%">';
				str += '<col width="10%">';
				str += '<col width="30%">';
				str += '<col width="10%">';
				str += '<col width="55px">';
				str += '</colgroup>';
				str += '<tr>';
				str += '<th>영화명</th>';
				str += '<th>상영관명</th>';
				str += '<th>총 좌석</th>';
				str += '<th>상영시간</th>';
				str += '<th>러닝타임</th>';
				str += '<th>비고</th>';
				str += '</tr>';
				
				if(listCnt == 0) {
					str += '<tr>';
					str += '<td colspan="6">등록된 상영 일정이 없습니다</td>';
					str += '</tr>';
				}
				else {
					$.each(result, function(index, element) {
						str += '<tr>';
						str += '<td>' + element.movieTitle + '</td>';
						str += '<td>' + element.screenName + '</td>';
						str += '<td>' + element.seatCnt + '</td>';
						str += '<td>' + element.scheduleStartString + '~' + element.scheduleEnd + '</td>';
						str += '<td>' + element.movieRunningtime + '분</td>';
						str += '<td>';
						str += '<input type="hidden" value="' + element.scheduleNum +'">';
						str += '<input type="button" value="삭제" class="deleteBookNSchedule">';
						str += '</td>';
						str += '</tr>';
					});
				}
				// 테이블 내용 붙이기
				$('#scheduleTable').append(str);
			},
			error: function() {
				alert('조회 실패');
			}
		});
	}
	
})(jQuery);
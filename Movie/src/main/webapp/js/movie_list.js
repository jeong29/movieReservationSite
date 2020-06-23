// 이벤트
$(document).ready(
		function() {
			// 장르select 박스 값 변경시
			$(document).on('change', '#genreSelector', function() {
				selectMovieList();
			});

			// 검색 버튼 클릭 시
			$(document).on('click','#searchBtn',function() {
				var searchValue = $('#searchValue').val();
				var searchKeyword = $('#searchKeyword').val();

				location.href='movieMain.do?searchValue='+searchValue+'&searchKeyword='+searchKeyword;
			});

			// 검색 버튼 엔터 이벤트
			$(document).on('keydown','#searchValue',function(key) {
				// 엔터키 눌렀을 때
				if (key.keyCode == 13) {
					var searchValue = $('#searchValue').val();
					var searchKeyword = $('#searchKeyword').val();

					location.href='movieMain.do?searchValue='+searchValue+'&searchKeyword='+searchKeyword;
				}
			});
			
		});

// 함수
(function($) {
	// 상세보기 이동
	goDetail = function(movieNum) {
		// alert(movieNum);
		location.href = 'movieDetail.do?movieNum=' + movieNum;
	};
	
	goReserv = function(memberId, movieNum) {
		
		// 로그인 체크
		if(memberId == null || memberId == ''){
			alert('로그인 후에 예매 가능합니다');
			location.href='loginForm.do';
		}
		else {
			location.href='scheduleList.do?movieNum=' + movieNum;
		}
	};

	// 영화 리스트 조회 함수
	selectMovieList = function() {
		var genreNum = $('#genreSelector').val();
		var memberId = $('#memberId').val();

		$.ajax({
			url : 'selectMovieListAjax.do',
			type : 'post',
			data : {
				'genreNum' : genreNum
			},
			success : function(result) {
				// 영화 리스트 테이블 내용 지움
				$('#selectMoiveTable').empty();

				// 리턴 받은 리스트의 갯수
				var listCnt = result.length;
				var str = '';

				str += '<colgroup>';
				str += '<col width="25%">';
				str += '<col width="25%">';
				str += '<col width="25%">';
				str += '<col width="25%">';
				str += '</colgroup>';
				str += '<tr>';

				if (listCnt == 0) {
					str += '<td colspan="4">등록된 영화가 없습니다</td>';
					str += '</tr>';
				} else {
					$.each(result, function(index, element) {
						str += '<td>';
						str += '<figure class="box">';
						str += '<img alt=" ' + element.movieTitle
								+ ' " src="upload/' + element.movieImage
								+ ' ">';
						str += '<figcaption>';
						if (element.movieIsUse == 'Y') {
							str += '<div class="reserv Btn">';
							str += '<a href="#" onclick="goReserv(' + memberId + ' , ' + element.movieNum + ');">예매하기</a>'
							str += '</div>';
						} else if (element.movieIsUse == 'N') {
							str += '<div class="noReserv Btn">';
							str += '상영중지';
							str += '</div>';
						}
						str += '<div class="detail Btn">';
						str += '<a href="#" onclick="goDetail(' + element.movieNum + ');">상세보기</a>';
						str += '</div>';
						str += '</figcaption>';
						str += '</figure>';
						
						str += '<br>';
						str += '<font class="title">' + element.movieTitle + '</font><br>';
						str += '<font class="openDate">' + element.movieOpenDate + '</font><br>';

						if (element.movieIsUse == 'Y') {
							str += '<b>상영중</b>';
						} else if (element.movieIsUse == 'N') {
							str += '<b><font id="no">상영중지</font></b>';
						}

						str += '</td>';

						if ((index + 1) % 4 == 0 && index != 0) {
							str += '</tr>';
							str += '<tr>';
						}
					});
				}
				str += '</tr>';
				$('#selectMoiveTable').append(str);
			},
			error : function() {
				alert('실패');
			}
		});
	};
})(jQuery);
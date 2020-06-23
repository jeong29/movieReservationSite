//jsp실행시 바로 실행
$(document).ready(function(){
	$('.otoIsUse').each(function(index, element) {
		if($(this).text() == '처리 완료'){
			$(this).css('font-weight', 'bold');
		}
	});
	
	
	
   
   //탭메뉴 클릭시
   $(document).on('click','ul.tabs li' , function(){
        var tab_id = $(this).attr('data-tab');
          
          $('ul.tabs li').removeClass('current');
          $('.tab-content').removeClass('current');
       
          $(this).addClass('current');
          $("#"+tab_id).addClass('current');
        });


	//회원정보관리 버튼 클릭시
	$(document).on('click','#passwordChk' , function(){
		var memberPassword = $('#memberPassword').val();
		var memberPasswordChk = $('#memberPasswordChk').val();
		var memberId = $('#memberId').val();
		
		if(memberPassword != memberPasswordChk ){
			alert('잘못 입력하셨습니다.');
			$('#memberPasswordChk').focus();
		}
		else{
			alert('회원정보 페이지로 이동합니다');
			location.href = 'memberInfo.do?memberId='+ memberId;
			
		}
     });

});
   
   
   

//함수 선언
(function($){
	//탈퇴하기 버튼 등록시
	joinOut = function(memberId) {
		var memberId = $('#memberId').val();
		var result = confirm('회원 탈퇴 하시겠습니까?');
		
		if(result){
			alert('안녕히 가세요ㅜㅜ');
			if(memberId != '' || memberId != null){
				location.href = 'memberJoinOut.do?memberId=' + memberId;				
			}
		}else{
			alert('잘생각했어요');
			location.href = 'myPage.do?memberId=' + memberId;				
			
		}
		
		
	}

})(jQuery);
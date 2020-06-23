// 이벤트
$(document).ready(function(){

	//목록가기 버튼 클릭시
	$(document).on('click','#listBtn' , function(){
		location.href = 'service.do';
  	 });
	
	//수정버튼 클릭시
	$(document).on('click','#updateBtn' , function(){
		var noticeNum = $('#noticeNum').val();
		location.href = 'noticeUpdateForm.do?noticeNum='+ noticeNum;
  	 });
	
	
	//글 삭제버튼 클릭시
	$(document).on('click','#deleteBtn', function() {
		var isDelete = confirm('정말 삭제하시겠습니까?');
		
		if(isDelete){
			var noticeNum = $('#noticeNum').val();
			location.href = 'noticeDelete.do?noticeNum='+ noticeNum;
		}
	});
	
	
	
	
	//탭메뉴 클릭시
	$(document).ready(function(){
		   
		  $('ul.tabs li').click(function(){
		    var tab_id = $(this).attr('data-tab');
		 
		    $('ul.tabs li').removeClass('current');
		    $('.tab-content').removeClass('current');
		 
		    $(this).addClass('current');
		    $("#"+tab_id).addClass('current');
		  })
		 
		})
	
	
	

});

// 함수
(function($) {

})(jQuery);
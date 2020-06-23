// 이벤트
$(document).ready(function(){

	
	//아이디 확인
	$(document).on('click','#idChkBtn' , function(){
		var memberId = $('#memberId').val();
		
		$.ajax({
	        url: 'selectmemberIdAjax.do',
	        type: 'post',
	        data: {'memberId':memberId},
	        success: function(result) {
	           if(result == '' || result == 0) {
	        	   
	        	   if($('#memberId').attr('data-checkId') == 'N'){
	       			alert('다시 작성 바랍니다');
	       			$('#memberId').val('');
	       			$('#memberId').focus();
	        	   }
	        	   if($('#memberId').attr('data-checkId') == 'Y'){
	        		   alert('사용 가능한 ID입니다.');
		        	   $('#memberId').attr('data-checkResult','Y');
		        	   }
	        	   
	        
	           }
	           else {
	              alert('사용중인 ID입니다. 다시 입력하세요');
	              //$('#memberId').val('');
	           }
	        },
	        error: function(){
	           alert('실패');
	        }
	   });
	});
	
	// 비밀번호 확인
	$(document).on('keyup','#memberPassword' , function(){
		$('#chkNotice').html('');
		
	});
	$(document).on('keyup','#memberPasswordChk', function(){
	    if($('#memberPassword').val() != $('#memberPasswordChk').val()){
	    	$('#memberPasswordChk').attr('data-passwordCheck','N');
	       $('#chkNotice').html('<div style="color:red;">&nbsp;&nbsp;비밀번호가 일치하지 않습니다</div>'); 
	       
	    }
	    else{
	    	$('#memberPasswordChk').attr('data-passwordCheck','Y');
	       $('#chkNotice').html('<div style="color:blue;">&nbsp;&nbsp;비밀번호가 일치합니다</div>');
	    }
	 });
	
	
	

	
	
	//아이디 입력시 
	$(document).on('change', '#memberId', function() {
		
		$('#memberId').attr('data-checkResult','N');
	});
	
	//아이디 입력시
	$(document).on('change', '#memberId', function() {
		var idReg = /^[A-za-z0-9]{5,15}$/g;
		
		 if( !idReg.test( $('input[name=memberId]').val() ) ) {
	          //  alert("아이디는 영문자로 시작하는 4~12자 영문자 또는 숫자이어야 합니다.");
	            $('#idChkNotice').html('<div style="color:red;">&nbsp;&nbsp;아이디는 영문자로 시작하는 4~12자 영문자 또는 숫자이어야 합니다.</div>');
	            $('#memberId').attr('data-checkId','N');
	            return false;
	        }
		 else{
			 $('#idChkNotice').html('<div style="color:blue;">&nbsp;&nbsp;아이디 유형에 적합합니다.</div>');
				$('#memberId').attr('data-checkId','Y');
		 }
		
		
	});
	
	
	//회원가입 클릭시 
	$(document).on('click', '#joinBtn', function() {
		if($('#memberId').val() == ''){
			alert("아이디 입력하세요.");
			$('#memberId').focus();
			return false;
		}
		
		if($('#memberId').attr('data-checkResult') == 'N'){
			alert("아이디 중복체크를 해주시기 바랍니다.");
			$('#memberId').focus();
			return false;
		}
		
		if($('#memberPasswordChk').attr('data-passwordCheck') == 'N'){
			alert('비밀번호 확인 바랍니다');
			$('#memberPassword').focus();
			return false;
		}
		
		


		$('#memberJoinForm').submit();
		
	});
	
	
	
	//전화번호 입력시
	$(document).on('keyup','#memberTel' , function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	
	
	
	
	//추천인 아이디 버튼 클릭시
	$(document).on('click','#chooChunBtn' , function(){
		var chooChunId = $('#chooChunId').val();
		
		$.ajax({
	        url: 'chooChunIdAjax.do',
	        type: 'post',
	        data: {'memberId':chooChunId},
	        success: function(result) {
	           if(result == '' || result == 0) {
	        	   alert('없는 아이디입니다');
	        		$('#chooChun').val('n'); 
	           }
	           else {
	        	   alert('추천자 아이디입니다');
	        	   $('#chooChun').val('y'); 
	           }
	        },
	        error: function(){
	           alert('실패');
	        }
	   });
	});
	
	
	
	
	
});

// 함수
(function($) {


	
})(jQuery);









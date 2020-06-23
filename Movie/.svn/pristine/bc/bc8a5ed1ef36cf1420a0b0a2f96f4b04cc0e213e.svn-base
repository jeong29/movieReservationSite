//jsp실행시 바로 실행
$(document).ready(function(){
   $('.answerTr').hide();
   
   //탭메뉴 클릭시
   $(document).on('click','ul.tabs li' , function(){
        var tab_id = $(this).attr('data-tab');
          
          $('ul.tabs li').removeClass('current');
          $('.tab-content').removeClass('current');
       
          $(this).addClass('current');
          $("#"+tab_id).addClass('current');
        });

   //자주하는 질문 클릭시
   $(document).on('click','.askDiv' , function(){
      var selected = $(this);
      var isClick = selected.parent().parent().next().attr('data-isShow');
      
      
      if(isClick == 'y'){
         selected.parent().parent().next().attr('data-isShow','n');
         selected.parent().parent().next().hide();
      }
      else{
         $('.answerTr').each(function(){
            $(this).attr('data-isShow','n')
         });
         
         selected.parent().parent().next().attr('data-isShow','y');
         
         $('.answerTr').each(function(){
            if($(this).attr('data-isShow') == 'y'){
               $(this).show();
            }
            else{
               $(this).hide();
            }
         });
      }

   });
   
   
   //일대일문의시 확인 버튼 클릭시 
   $(document).on('click','#otoTap' , function(){
	   
	   // 로그인이 안되어 있을시 
	   var memberId = $('#memberId').val();
	   if(memberId == '' || memberId == null){
		   alert('로그인후 이용 바랍니다!');
		   location.href = 'loginForm.do';
	   }
   
   });
   

});

   
   
   //검색 버튼 엔터 이벤트 처리
   $(document).on('keydown','#searchValue' , function(key){
      //엔터키를 눌럿을 때..
      if(key.keyCode == 13 ){
         var searchValue = $('#searchValue').val();
         var searchKeyword = $('#searchKeyword').val();
         var startIndex = $('#startIndex').val();   
         $.ajax({
               url: 'selectNoticeListAjax.do',
               type: 'post',
               data: {'searchKeyword':searchKeyword, 'searchValue':searchValue, 'startIndex':startIndex},
               success: function(result) {
                  
                  $('#noticeTable').empty();
               
                  var str = '';
                  
                  //#noticeTable 
                  str += '<tr>';
                  str += '<th>번호</th>';
                  str += '<th>제목</th>';
                  str += '<th>등록일</th>';
                  str += '<th>조회수</th>';
                  str += '</tr>';
                  
                  if(result.length == 0){
                     str += '<tr>';
                     str += '<td colspan="4" align="center">데이터가 없습니다.</td>';
                     str += '</tr>';
                     
                  }
                  else{
                      $.each(result, function(index, element){
                        str += '<tr>';
                        str += '<td>' + element.rowNum + '</td>';
                        str += '<td><a href="noticeDetail.do?noticeNum=' + element.noticeNum + '">' + element.noticeTitle + '</a></td>';
                        str += '<td>' + element.createDate + '</td>';
                        str += '<td>' + element.readCnt + '</td>';
                        str += '</tr>';
                     });
                  }
                  
                  $('#noticeTable').append(str);
                  
               
               },
               error: function(){
                  alert('등록 실패');
                  
               }
       
         });
         
         
      }
      
      });

   
   

//함수 선언
(function($){
   //공지사항에서 검색 버튼 눌렀을 시  
   searchBtn = function(searchValue) {
      var searchKeyword = $('#searchKeyword').val();
      var searchValue = $('#searchValue').val();
      var startIndex = $('#startIndex').val();   
     
      $.ajax({
            url: 'selectNoticeListAjax.do',
            type: 'post',
            data: {'searchKeyword':searchKeyword, 'searchValue':searchValue, 'startIndex':startIndex},
            success: function(result) {
               
               $('#noticeTable').empty();
            
               var str = '';
               
               //#noticeTable 
               str += '<tr>';
               str += '<th>번호</th>';
               str += '<th>제목</th>';
               str += '<th>등록일</th>';
               str += '<th>조회수</th>';
               str += '</tr>';
               
               if(result.length == 0){
                  str += '<tr>';
                  str += '<td colspan="4" align="center">데이터가 없습니다.</td>';
                  str += '</tr>';
                  
               }
               else{
                   $.each(result, function(index, element){
                     str += '<tr>';
                     str += '<td>' + element.rowNum + '</td>';
                     str += '<td><a href="noticeDetail.do?noticeNum=' + element.noticeNum + '">' + element.noticeTitle + '</a></td>';
                     str += '<td>' + element.createDate + '</td>';
                     str += '<td>' + element.readCnt + '</td>';
                     str += '</tr>';
                  });
               }
               
               $('#noticeTable').append(str);
               
            
            },
            error: function(){
               alert('등록 실패');
               
            }
    
      });
      
      
   }
   
   
   
   //공지사항 페이징 처리 리스트 조회
   selectNoticeList = function(startIndex){
      var searchKeyword = $('#searchKeyword').val();
      var searchValue = $('#searchValue').val();
      
      
      $.ajax({
            url: 'selectNoticeListAjax.do',
            type: 'post',
            data: {'searchKeyword':searchKeyword, 'searchValue':searchValue, 'startIndex':startIndex},
            success: function(result) {
               //검색 기능
               
               
               $('#noticeTable').empty();
               
               
               var str = '';
               
               //#noticeTable 
               str += '<tr>';
               str += '<th>번호</th>';
               str += '<th>제목</th>';
               str += '<th>등록일</th>';
               str += '<th>조회수</th>';
               str += '</tr>';
               
               if(result.length == 0){
                  str += '<tr>';
                  str += '<td colspan="4" align="center">데이터가 없습니다.</td>';
                  str += '</tr>';
                  
               }
               else{
                   $.each(result, function(index, element){
                     str += '<tr>';
                     str += '<td>' + element.rowNum + '</td>';
                     str += '<td><a href="noticeDetail.do?noticeNum=' + element.noticeNum + '">' + element.noticeTitle + '</a></td>';
                     str += '<td>' + element.createDate + '</td>';
                     str += '<td>' + element.readCnt + '</td>';
                     str += '</tr>';
                  });
               }
               
               $('#noticeTable').append(str);
               
            
            },
            error: function(){
               alert('등록 실패');
               
            }
    
      });
   };
   
   //자주하는 질문 탭 선택시
   selectFaqList = function(faqSortCode){
      
      
      
      $.ajax({
            url: 'selectFaqListAjax.do',
            type: 'post',
            data: {'faqSortCode':faqSortCode},
            success: function(result) {
               $('#faqTable').empty();
               
               var str = '';
               str += '<colgroup>';
               str += '<col width="20%">';
               str += '<col width="80%">';
               str += '</colgroup>';
               str += '<tr>';
               str += '<th>분류 </th>';
               str += '<th>질문 </th>';
               str += '</tr>';
               
               if(result.length == 0){
                  str += '<tr>';
                  str += '<td colspan="2" align="center">데이터가 없습니다.</td>';
                  str += '</tr>';
                  
               }
               else{
                   $.each(result, function(index, element){
                     str += '<tr>';
                     str += '<td>' + element.faqSortName + '</td>';
                     str += '<td><div class="askDiv">' + element.faqAsk + '</div></td>';
                     str += '</tr>';
                     str += '<tr class="answerTr" data-isShow="n">';                     
                     str += '<td colspan="2">' + element.faqAnswer + '</td>';
                     str += '</tr>';
                  });
               }
               
               $('#faqTable').append(str);
               $('.answerTr').hide();
            
            },
            error: function(){
               alert('등록 실패');
               
            }
    
      });
   }
   
   
})(jQuery);
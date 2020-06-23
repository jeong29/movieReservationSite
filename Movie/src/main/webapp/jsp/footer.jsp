<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>푸터 화면</title>
<script src="https://kit.fontawesome.com/148cfa54ae.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">

	function printClock() {
	    
	    var clock = document.getElementById("clock");// 출력할 장소 선택
	    var currentDate = new Date(); // 현재시간
	    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate(); // 현재 날짜
	    var amPm = 'AM'; // 초기값 AM
	    var currentHours = addZeros(currentDate.getHours(),2); 
	    var currentMinute = addZeros(currentDate.getMinutes() ,2);
	    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
	    
	 	// 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
	    if(currentHours >= 12){ 
	    	amPm = 'PM';
	    	currentHours = addZeros(currentHours - 12,2);
	    }

	    clock.innerHTML = amPm + " " + currentHours+":"+currentMinute+":"+currentSeconds; //날짜를 출력해 줌
	    
	 	// 1초마다 printClock() 함수 호출
	    setTimeout("printClock()",1000); 
	};

	function addZeros(num, digit) { // 자릿수 맞춰주기
		  var zero = '';
		  num = num.toString();
		  if (num.length < digit) {
		    for (i = 0; i < digit - num.length; i++) {
		      zero += '0';
		    }
		  }
		  return zero + num;
	};

</script>

<link rel="stylesheet" href="css/footer.css?ver=07">
</head>
<body onload="printClock();">
<div class="boxDiv left">
	<font id="clock"></font>
</div>
<div class="boxDiv center">
	<font class="title">CUSTOMER CENTER</font><br>
	<i class="far fa-clock"></i> ARS 1400-1111<br>
	- 업무시간 : 10:00 ~ 18:00 (점심시간 12:00 ~ 14:00)<br>
	- 토요일, 일요일, 공휴일 휴무
</div>
</body>
</html>
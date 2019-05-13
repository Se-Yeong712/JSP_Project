<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/worldcup.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
var food1="",food2="",finalfood="";
var i=0,f=0,t=0,count=0,round=0;
var four=new Array(4);
var two=new Array(2);
var receiveData;


function foodsel(){
	receiveData = JSON.parse(window.localStorage.getItem("food"));
	if(count==0){
		food1=receiveData[i++];
		food2=receiveData[i++];
		if(i<receiveData.length){
			foodtour(food1,food2);
		}
		else{
			var conti=confirm("8강이 종료되었습니다. 4강을 진행하시겠습니까?");
			if(conti==true){
				count=4;
				i=0;
				round=0;
			}
		}
	}
	
 	else if(count==4){
		food1=four[i++];
		food2=four[i++];
		if(i<four.length+1){
			foodtour(food1,food2);
		}
		else{
			var conti=confirm("4강이 종료되었습니다. 결승을 진행하시겠습니까?");
			if(conti==true){
				count=1;
				round=0;
				console.log(count);
			}
		}
	}
	
 	else{
		foodtour(two[0],two[1]);
		
 	}
	
}

function finaltour(){
	alert("선택된 음식은 " + finalfood +"입니다." );
	result();
}

function foodtour(food1, food2){
	var tour1=document.getElementById("tournament1");
	var tour2=document.getElementById("tournament2");
	
	tour1.innerHTML=food1;
	tour2.innerHTML=food2;
	
	console.log(food1,food2);
}


	
$(function() {
	  $('#start').click( function() {
	    if(count==0) {
	      $(this).html('8강 - ' + ++round);
	    }
	    else if (count==4){
	    	if(round==0){
	    		$(this).html('4강 시작');
	    		round++;
	    	}
	    	else{
	    		$(this).html('4강 - ' + round++);
	    	}
	    }
	    else if(count==1){
	    	if(round==0){
	    		$(this).html('결승 시작');
	    		round++;
	    	}
	    	else{
	    		$(this).html('결승');
	    	}
	    	
	    }
	  });
	});

function chk(check){
	if(check==1){
		if(count==0){
			four[f]=food1;
			f++;
		}
		else if(count==4){
			two[t]=food1;
			t++;
		}
		else{
			finalfood=two[0];
			finaltour();
		}
	}
	else if(check==2){
		if(count==0){
			four[f]=food2;
			f++;
		}
		else if(count==4){
			two[t]=food2;
			t++;
		}
		else{
		finalfood=two[1];
		finaltour();
		}
	}
	
	console.log(check);
}

function result(){
	var res=document.getElementById('result');
	res.innerHTML = "FOOD <br> ["+receiveData[0]+"] ["+receiveData[1]+"] ["
			+receiveData[2]+"] ["+receiveData[3]+"] ["+receiveData[4]+"] ["
			+receiveData[5]+"] ["+receiveData[6]+"] ["+receiveData[7]+"] <br><br>"
			+"4강 <br> ["+four[0] +"]"
			+"["+four[1] +"]"
			+"["+four[2] +"]"
			+"["+four[3] +"]<br><br>"
			+"결승 <br> ["+two[0] +"]"
			+"["+two[1] +"]<br><br>"
			+"<h2>최종선택 : ["+finalfood +"]</h2>"
			
			
			;
}
</script>
</head>
<body>
<center>
<div class="title">음식 토너먼트 / Food Tournament</div>

<button id="start" onclick="foodsel()" class="btn">토너먼트 시작하기</button><br>

<button id="tournament1" class="chk" onclick="chk(1)">FOOD1</button>
<div class="vs">VS</div>
<button id="tournament2" class="chk" onclick="chk(2)">FOOD2</button>

<div id="result"></div>

</center>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String kinds[][]={{"청국장","순두부찌개","고추장찌개","갈비찜","닭볶음탕","스테이크","연근조름","시금치무침","감자조림"},
				{"부대찌개","김치찌개","된장찌개","아귀찜","삼계탕","수육","감자채볶음","장조림","진미채볶음"},
				{"비지찌개","전찌개","동태찌개","월남쌈","불고기","찜닭","콩조림","콩나물무침","멸치볶음"},
				{"제육덮밥","비빔밥","오므라이스","찌개","특식","밑반찬","토스트","또띠아피자","떡꼬치"},
				{"카레덮밥","김치볶음밥","오징어덮밥","덮/볶음밥","종류별","간식","쿠키","떡볶이","호떡"},
				{"짜장밥","야채볶음밥","간장밥","국","야식/술안주","면","샌드위치","시리얼","팝시클"},
				{"육개장","떡국","미역국","두부김치","튀김","소시지야채볶음","라면","토마토스파게티","크림스파게티"},
				{"콩나물국","붓엇국","소고기무국","콘치즈","골뱅이무침","부침개","잔치국수","비빔국수","칼국수"},
				{"시래깃국","된장국","감잣국","어묵탕","닭똥집볶음","순대볶음","우동","볶음우동","콩국수"}};

String country[][]={{"규동","우동","미소시루","해물파전","김치","쌈밥","깐풍기","볶음면","동파육"},
				{"찜닭","가츠동","오니기리","된장찌개","비빔밥","칼국수","짜장면","짬뽕","마파두부"},
				{"하이라이스","라멘","오코노미야끼","불고기","떡볶이","제육볶음","탕수육","토마토달걀볶음","고추잡채"},
				{"라자냐","그라탕","뇨끼","일본","한국","중국","팟타이","카오팟","나시고랭"},
				{"스파게티","나폴리피자","리소토","이탈리아","나라별","동남아","볶음밥","쌀국수","연유라떼"},
				{"알프레도","프리타타","파니니","프랑스","미국","중동","반미","짜조","분짜"},
				{"부야베스","라타투이","프렌치토스트","햄버거","핫도그","클램차우더","케밥","허머스","팔라펠"},
				{"끼슈","마카롱","뵈프부르기뇽","바비큐","치킨","맥앤치즈","샥슈카","페투쉬","필라프"},
				{"코코뱅","크로크무슈","뱅쇼","잠발라야","미트로프","에그베네틱트","무사카","피타","쿠스쿠스"}};


%>
<html>
<head>
<link rel="stylesheet" href="css/mandalArt.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script>
 var index=0;
 var foodlist=new Array(9);
 var food="";
 var chk=0;

 	$(document).ready(function(){
 		$('.button').on('click',(e) => {
 			console.log(e.target.value);
 			 var div=document.getElementById("food"); 
 			chk=0;
 			 div.innerHTML=e.target.value+" ";
 			 food=e.target.value;
 			 	var foods = ['찌개','특식','밑반찬','덮/볶음밥','간식','국','야식/술안주','면'];
 				 for(var i=0;i<8;i++){
 					 if(food==foods[i]){
 						/* console.log(e.target.value+"확인"); */
 						tdsel(i);
 						break;
 					 }
 					 else if(food!="찌개" && food!="특식" && food!="밑반찬" && food!="덮/볶음밥" && food!="간식" && food!="국" && food!="야식/술안주" && food!="면" && food!="종류별"){
 						 setItems();
 						chk=1;
 					 }
 					 
 				 }
			if(chk==1){
				index++;
			}
 		});
 	});
 	
 	function setItems(){
 		if(index<9){
				foodlist[index]=food;
				localStorage.setItem("food",JSON.stringify(foodlist));
			}
			else{
				alert("더이상 저장할 수 없습니다.");
			}
 		
 		
 	}	
 	
 	function deleteItems() {
 		  localStorage.clear();
 		}


 	function tdsel(i){
 		switch (i) {
		case 0:
			tdcol(0,0);
			break;
		case 1:
			tdcol(0,3);
			break;
		case 2:
			tdcol(0,6);
			break;
		case 3:
			tdcol(3,0);
			break;
		case 4:
			tdcol(3,6);
			break;
		case 5:
			tdcol(6,0);
			break;
		case 6:
			tdcol(6,3);
			break;
		case 7:
			tdcol(6,6);
			break;

		default:
			console.log(i);
			break;
		}
 		
 		
 	}
 	function tdcol(x,y){
 		for(var i=0;i<9;i++){
 			for(var j=0;j<9;j++){
 				if(i>2 && i<6 && j>2 && j<6){
 					document.getElementById("tdcolor").rows[i].cells[j].style.backgroundColor="#FFF0A5";
 				}
 				else{
 					document.getElementById("tdcolor").rows[i].cells[j].style.backgroundColor="white";
 				}
 				
 			}
 		}
 		
 		for(var i=0;i<3;i++){
 			document.getElementById("tdcolor").rows[x].cells[y+i].style.backgroundColor="#cff09e";
 			document.getElementById("tdcolor").rows[x+1].cells[y+i].style.backgroundColor="#cff09e";
 			document.getElementById("tdcolor").rows[x+2].cells[y+i].style.backgroundColor="#cff09e";
 		}
 	}
 	

 </script>

</head>
<body>
mandalArtProc.jsp 

<!-- <form>
<input type="button" value="종류별" onclick='kind()'>
<input type="button" value="종류별" onclick='country()'>
</form> -->

<table id="tdcolor"border=1 style="border:2px solid black;width:800px;height:800px;margin:auto;text-align:center; border-collapse:collapse;">
<colgroup>
<col width="9%"/>
<col width="9%"/>
<col width="9%" style="border-right:2px solid black;"/>
<col width="9%"/>
<col width="9%"/>
<col width="9%" style="border-right:2px solid black;"/>
<col width="9%"/>
<col width="9%"/>
<col width="9%"/>

</colgroup>
<%
	int check=0;
	for(int i=0;i<country.length;i++){
	if(i==2 || i==5){%>
		<tr height="40px" style="border-bottom:2px solid black;">
	<%}
	else{%>
		<tr height="40px">
	<%}
	for(int j=0;j<country.length;j++){
	if(i>2 && i<6 && j>2 && j<6){%>
		<td id="color" style="padding-top:0px; background-color:#FFF0A5;"><button class="button" value="<%=kinds[i][j]%>" ><%=kinds[i][j] %></button></td>
		<%}
	else{%>
		<td style="padding-top:0px; background-color:white;"><button id="btn" class="button" value="<%=kinds[i][j]%>"><%=kinds[i][j] %></button></td>
<%}%>

<%}%>
	
</tr>
<%}%> 
</table>

<div id="food"class="foodbox"></div>


</body>
</html>
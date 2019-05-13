<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/random.css">
<script type="text/javascript">
function myRandom(){
	var i=Math.floor(Math.random()*3);
	var j=Math.floor(Math.random()*3);
 	var div=document.getElementById("ran"); 

	var x=0;
	var y=2;
	var Timer1 = setInterval(function(){	
		document.getElementById("myTable").rows[x].cells[x].style.backgroundColor="#FFF0A5";
		document.getElementById("myTable").rows[x++].cells[y--].style.backgroundColor="#FFF0A5";
	/* 	div.innerHTML="x:" + x + " y:" + y + " i:" + i+ " j:"+j; */
		if(x==3){
			setTimeout(function() {
				document.getElementById("myTable").rows[0].cells[1].style.backgroundColor="#FFF0A5";
				document.getElementById("myTable").rows[1].cells[0].style.backgroundColor="#FFF0A5";
				document.getElementById("myTable").rows[1].cells[2].style.backgroundColor="#FFF0A5";
				document.getElementById("myTable").rows[2].cells[1].style.backgroundColor="#FFF0A5";
				
				setTimeout(function() {
					for(var x=0;x<3;x++){
						for(var y=0;y<3;y++){
							document.getElementById("myTable").rows[x].cells[y].style.backgroundColor="";
						}	
					} 
					document.getElementById("myTable").rows[i].cells[j].style.backgroundColor="#FFF0A5";
					}, 500);
				}, 500);

			clearInterval(Timer1);
		}
	}, 500);
	

	
}

/* $(document).ready(function() {
	$('.button').on('click',(e) => {
		
		$('#test').val('원하는 값');
		
	});
}); */

</script>
</head>
<body>
<div class="title">Random Select</div>


<table id="myTable" class="table">
<colgroup>
	<col span=3 width="100px">
</colgroup>
	<%
	for(int i=0;i<3;i++){%>
		<tr><%
		for(int j=0;j<3;j++){%>
			<td class="td"><input type="text" class="tdInput"></td>
		<%}%>
		</tr>
	<%}	%>
</table>
<!-- <div id="ran"></div> -->
<center>
<!-- <button class="btn" onclick="storage();">Local Storage</button> -->
<button class="btn" onclick="myRandom();">RANDOM</button>
</center>
</body>
</html>
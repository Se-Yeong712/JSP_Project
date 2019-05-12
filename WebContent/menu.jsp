<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/menu.css">

<script>
	function openNav() {
		document.getElementById("myNav").style.height = "100%";
	}

	function closeNav() {
		document.getElementById("myNav").style.height = "0%";
	}
</script>
</head>
<body>
	<div id="myNav" class="overlay">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="main.jsp" class="main">&Eta;</a>
		<div class="overlay-content">
			<a href="instagram.jsp">MENU1</a> 
			<a href="mandalArt.jsp">MENU2</a> 
			<a href="random.jsp">MENU3</a>
			<a href="worldCup.jsp">MENU4</a>
		</div>
	</div>
	<center>
		<span style="font-size: 50px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</center>
	
</body>
</html>



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
			<div class="overlay-content">
					<a href="#">메뉴1</a>
					<a href="#">메뉴2</a>
					<a href="#">메뉴3</a>
					<a href="#">메뉴4</a>
				
			</div>
		</div>

		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
			open</span>
</body>
</html>



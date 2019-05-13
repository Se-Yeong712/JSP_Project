<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/instagram.css">

<style>

@import url( http://fonts.googleapis.com/css?family=Open+Sans:400,600,800,300 ); 
html, body, form, #wrap {height:100%;} 
body > #wrap {height: auto !important;height:auto;min-height:100%;}
ul,li {padding:0;margin:0;list-style:none;}
a {text-decoration:none;}
img {padding:0;margin:0;border:0;}
.clearfix:before,.clearfix:after {content: " ";display: table;}
.clearfix:after {clear: both;}
.clearfix {*zoom: 1;}
#instagram-container {width:640px;margin:0 auto;}
#instagram-container h1 {font-family:'Open Sans';font-size:20px;font-weight:bold;text-align:center;color:black;}
ul.myfeed {position:relative;width:100%;font-size:0;}
ul.myfeed li {position:relative;display:inline-block;margin:5px;} 
ul.myfeed li img {width:150px;}
ul.myfeed li a:hover {
	opacity:0.7;
	transition: opacity 0.5s;
	-webkit-transition: opacity 0.5s;
	-moz-transition: opacity 0.5s;
	-o-transition: opacity 0.5s;
}
.title{
 font-weight: bold;
 font-size: 30px;
 margin: 10px;
 text-align:center;
 margin-top: 50px;
 color:black;
 }
</style>
</head>
<body>
<div id="wrap">
<div id="instagram-container">
<div class="title">Food Instagram Feed</div>
<div id="instagram-myfeed"></div>
<script>
var access_token="13556355295.b1b6e06.4cb0f80b8b1f496b987a19e80a0f7d02";
var api_endpoint="https://api.instagram.com/v1/users/self/media/recent/?access_token=" + access_token; 

$.get( api_endpoint, function( json ) {
	
	var instabanner = $('#instagram-myfeed');
	var ouputHtml = "";
	ouputHtml += '<ul class="myfeed">';
	
	var limit = 12;
	var myfeed = json.data;
	for (var i = 0; i < limit; i++) {
		
		ouputHtml += '<li>';
		ouputHtml += '<a href="'+myfeed[i].link+'" target="_blank">';
		ouputHtml += '<img src="'+myfeed[i].images.thumbnail.url+'" />';
		ouputHtml += '</a>';
		ouputHtml += '</li>';
	}
	
	ouputHtml += "</ul>";	
	instabanner.html( ouputHtml );
	
});//end get
</script>
</div><!--end instagram-container-->
</div><!--end wrap-->
<br>
<br>
<br>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/random.css">
<script type="text/javascript">
	var ran=Math.floor(Math.random()*9);

function doFunction(){
	alert(ran);
}

function HighlightRow(obj){

	var table = document.getElementId("tableId");
	var tr = table.getElementsByTagName("tr");
	for(var i=0; i<tr.length; i++){
		tr[i].style.background = "white";
	}
	obj.style.backgroundColor = "#FCE6E0";

}
</script>
</head>
<body>
randomProc.jsp a
<table id="tableId" border="1" style="margin:auto;border:1px solid black;text-align:center;width:300px;height:300px;border-collapse:collapse;">
<colgroup>
	<col span=3 width="100px">
</colgroup>

	<%
	for(int i=0;i<3;i++){%>
		<tr><%
		for(int j=0;j<3;j++){%>
			<td onclick="javascript:HighlightRow(this);"><input type="text" style="width:100px; height: 100px; text-align:center;">tdtdtd</td>
		<%}%>
		</tr>
	<%}	%>
</table>
<input id="clickMe" type="button" value="clickme" onclick="doFunction();" />



</body>
</html>
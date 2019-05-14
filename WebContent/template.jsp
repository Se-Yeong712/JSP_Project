<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<head>
<title>Food's Search And Select</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800');
</style>
<link rel = "shortcut icon" href = "img/logo.jpg">
</head>
<body style="margin:auto; font-family: 'Open Sans', Futura,Helvetica, Arial, sans-serif;">
			<table style="width: 100%;  align:center">
				<tr>
					<td><jsp:include page="top.jsp" flush="false" /></td>
				</tr>

				<tr>
					<td><jsp:include page="menu.jsp" flush="false" /></td>
				</tr>
				<tr>
					<td><jsp:include page="<%=contentPage%>" flush="false" /></td>
				</tr>

				<tr>
					<td><jsp:include page="bottom.jsp" flush="false" /></td>
				</tr>


			</table>



</body>
</html>
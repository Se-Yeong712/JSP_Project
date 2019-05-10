<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<style>
@font-face { font-family:'NG'; src:url('font/NanumGothic.woff') format('woff');}
</style>
<body style="font-family: 'NG';">
	<center>
			<table border="1" style="width: 100%; height:100%; align:center">
				<tr>
					<td height="80px"><jsp:include page="top.jsp" flush="false" /></td>
				</tr>

				<tr>
					<td height="80px"><jsp:include page="menu.jsp" flush="false" /></td>
				</tr>
				<tr>
					<td><jsp:include page="<%=contentPage%>" flush="false" /></td>
				</tr>

				<tr>
					<td height="10px"><jsp:include page="bottom.jsp" flush="false" /></td>
				</tr>


			</table>
	</center>



</body>
</html>
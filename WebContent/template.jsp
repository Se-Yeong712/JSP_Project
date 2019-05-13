<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800');
</style>
<body style="margin:auto; height:100%; font-family: 'Open Sans', Futura,     Helvetica, Arial, sans-serif;">
			<table border=1 style="width: 100%;  align:center">
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



</body>
</html>
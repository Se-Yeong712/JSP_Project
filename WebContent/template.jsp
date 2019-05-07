<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<body>
<center>
<table border=1 style="width:100%;">
	<tr>
		<td>
			<jsp:include page="top.jsp" flush="false"/>
		</td>	
	</tr>
	
 	<tr>
		<td>
			<jsp:include page="menu.jsp" flush="false"/>
		</td>	
	</tr> 
	<tr>
		<td>
			<jsp:include page="<%=contentPage%>" flush="false"/>
		</td>		
	</tr>	
	
	<tr>
		<td>
			<jsp:include page="bottom.jsp" flush="false"/>
		</td>	
	</tr>

	
	</table>

</center>



</body>
</html>
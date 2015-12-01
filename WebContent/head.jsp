<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<table width="100%" class = "table table-hover">
	<tr>
		<td height="24" colspan="3" bgcolor="#FF99FF"></td>
	</tr>
	<tr>
		<td width="23%"><img src="images/1169762.png" width="161" height="131" /><a href="index.jsp"></td>
		<td width="57%"><div align="center"><img src="images/logo1.gif" width="321" height="130" /></div></td>
		<td width="20%"><p>
				<img src="images/1181629.png" width="56" height="46" /><a href="ShoppingCl2">[My account]
			</p>
			<p>
				<img src="images/1190340.png" width="48" height="42" /><a
					href="ShoppingClServlet?type=show"> [Shopping Cart]
			</p></td>
	</tr>
	<tr>
		<td colspan="3" bgcolor="#FF99FF">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="3"><table width="100%">
				<tr>
					<td width="7%">&nbsp;</td>
					<td width="15%"><a href="index.jsp">First Page </td>
					<td width="10%">&nbsp;</td>
					<td width="28%">Crime Moive</td>
					<td width="10%">&nbsp;</td>
					<td width="10%">Story Movie</td>
					<td width="5%">&nbsp;</td>
					<td width="11%">About us</td>
					<td width="4%">&nbsp;</td>
				</tr>
			</table></td>
	</tr>
</table>

<%@ page language="java" import="com.sp.model.*" pageEncoding="utf-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
UserBean ub=(UserBean)session.getAttribute("userInfo");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body topmargin="0" background="images/bg.bmp">
	<center>
		<table width="80%" cellspacing="0" cellpadding="0" class = "table table-hover">
			<tr>
				<td align="center"><jsp:include flush="true" page="head.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center"><table width="100%" border="1"
						cellspacing="0" cellpadding="0">
						<tr>
							<td align="center"><img src="images/cartnavi.jpg"
								width="400" height="49" /></td>
						</tr>
						<tr>
							<td align="center">
											<form action="LoginCl" method="post" role = "form">
									<table width="40%"  cellpadding="0" cellspacing="0"
										bordercolor="#9999FF" class="abc">
										<tr>
											<td colspan="2" align="center"><img src="images/dl2.gif"
												width="180" height="63" /></td>
										</tr>
										<tr>
											<td colspan="2" align="center" bgcolor="#FFCC99">&nbsp;</td>
										</tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">Username:</td>
									      <td width="61%" align="left"><%=ub.getUsername()%>></td>
									  </tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">True Name: <%=ub.getTruename() %></td>
									      <td width="61%" align="left">|</td>
									  </tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">Adress:</td>
									      <td width="61%" align="left"><%=ub.getAddress() %></td>
									  </tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">Telephone:</td>
									      <td width="61%" align="left"><%=ub.getPhone() %></td>
									  </tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
											<td width="39%" align="right">Email:</td>
											<td width="61%" align="left"><%=ub.getEmail()%></td>
										</tr>
										<tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">Postcode:</td>
									      <td width="61%" align="left"><%=ub.getPostcode()%></td>
									  </tr>
									  <tr bordercolor="#000000" bgcolor="#FFFFFF">
										  <td align="right">grade:</td>
									      <td width="61%" align="left"><%=ub.getGrade() %></td>
									  </tr>
										<tr>
										  <td colspan="2" align="center" bgcolor="#FFCC99">&nbsp;</td>
								      </tr>
									</table>
								</form>
							</td>
						</tr>
						<tr>
							<td align="right"><img src="images/cartnext.gif" width="120"
								height="25" /></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
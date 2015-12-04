<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
							<td colspan="2" align="center"><img src="images/cartnavi.jpg"
								width="400" height="49" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
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
										  <td colspan="2" align="center">Nothing In yout Cart </td>
								      </tr>
										
										<tr>
										  <td colspan="2" align="center" bgcolor="#FFCC99">&nbsp;</td>
								      </tr>
									</table>
								</form>							</td>
						</tr>
						<tr>
							<td width="49%" align="left"><a href="index.jsp">Continue Shoppoing! </a> </td>
						    <td width="51%" align="right"><img src="images/cartnext.gif" width="120"
								height="25" /></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
			</tr>
		</table>
	</center>
</body>
</html>
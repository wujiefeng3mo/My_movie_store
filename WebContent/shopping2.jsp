<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shopping2.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

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
							<td align="center"><img src="images/cartnavi-2.gif"
								width="599" height="49" /></td>
						</tr>
						<tr>
							<td align="center">
								<form action="LoginCl" method="post" role = "form">
									<table width="40%"  cellpadding="0" cellspacing="0"
										bordercolor="#9999FF" class="abc">
										<tr>
											<td colspan="2" align="center"><img src="images/dl.gif"
												width="149" height="63" /></td>
										</tr>
										<tr>
											<td width="39%" align="right">username:</td>
											<td width="61%" align="left"><input name="username"
												type="text" size="15" /></td>
										</tr>
										<tr>
											<td align="right">password:</td>
											<td align="left"><input name="password" type="text"
												size="15" /></td>
										</tr>
										<tr>
											<td align="right"><button type="submit" class="btn btn-default">sign in</button></td>
											<td align="left"><a href="LoginCl?type=signup">sign up</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
						<tr>
							<td align="right"><img src="images/cartnext.gif" width="87"
								height="19" /></td>
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

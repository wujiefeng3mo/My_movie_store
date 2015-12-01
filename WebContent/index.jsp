<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	<table width="80%"  align="center" cellpadding="0"
		cellspacing="0" class = "table table-hover">
		<tr>
			<td height="94" colspan="2" align="center"><jsp:include
					flush="true" page="head.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td width="21%" height="185" align="center"><jsp:include
					flush="true" page="left.jsp"></jsp:include></td>
			<td width="73%" valign="top" align="center"><jsp:include
					flush="true" page="right.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td height="62" colspan="2" align="center"><jsp:include
					flush="true" page="tail.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>

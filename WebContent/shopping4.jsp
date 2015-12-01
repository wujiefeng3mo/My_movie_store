<%@ page language="java" import="java.util.*,com.sp.model.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	//to get the detailed info of order

	OrderInfoBean oib = (OrderInfoBean) request
			.getAttribute("detailbean");
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shopping4.jsp' starting page</title>

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
		<table width="80%" border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center"><jsp:include flush="true" page="head.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center">
				<table width="100%" border="1"
						cellpadding="0" cellspacing="0" class="table">
						<tr>
							<td colspan="9" align="center">image</td>
						</tr>
						<tr>
							<td colspan="9" align="center">order info</td>
						</tr>
						<tr align="center">
							<td>order number</td>
							<td>receive name</td>
							<td>receive address</td>
							<td>postcode</td>
							<td>telephone</td>
							<td>total price</td>
							<td>username</td>
							<td>email</td>
							<td>&nbsp;</td>
						</tr>
						<tr align="center">
							<td><%=oib.getOrdersId()%></td>
							<td><%=oib.getTruename()%></td>
							<td><%=oib.getAddress()%></td>
							<td><%=oib.getPostcode()%></td>
							<td><%=oib.getPhone()%></td>
							<td>$<%=oib.getTotalPrice()%></td>
							<td><%=oib.getUsername()%></td>
							<td><%=oib.getEmail()%></td>
						</tr>
						<tr>
							<td colspan="9" align="center">your order is being
								processing, we will send you a email</td>
						</tr>
					</table>
					</td>
			</tr>
			<tr>
				<td align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>

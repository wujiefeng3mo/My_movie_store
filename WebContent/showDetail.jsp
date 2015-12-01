<%@ page language="java" import="java.util.*,com.sp.model.*"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

GoodsBean gb=(GoodsBean)request.getAttribute("goodsInfo");

%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'showDetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
		function returnHall(){
			window.open("index.jsp","_self");
		}
		

		function addGoods(goodsId){
			window.open("ShoppingClServlet?type=addGoods&goodsId="+goodsId,"_self");
		}
	</script>
</head>

<body topmargin="0" background="images/bg.bmp">
	<center>
		<table width="80%" class="table" >
			<tr>
				<td align="center"><jsp:include flush="true" page="head.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center"><table class="table" width="100%" 
						>
						<tr>
							<td height="15" colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td width="25%" rowspan="8"><img
								src="images/<%=gb.getPhoto() %>" width="136" height="169" /></td>
							<td align="center"><%=gb.getGoodsName() %></td>
						</tr>
						<tr>
							<td>price：$<%=gb.getGoodsPrice() %></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>ISBN：<%=gb.getGoodsId() %></td>
						</tr>
						<tr>
							<td>type：<%=gb.getType() %></td>
						</tr>
						<tr>
							<td>publisher：<%=gb.getPublisher() %></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td height="76" align="left" valign="top"><%=gb.getGoodsIntro() %></td>
						</tr>
						<tr>
							<td height="23" colspan="2"><input type="button"
								onclick="addGoods(<%=gb.getGoodsId() %>)" name="Submit"
								value="buy" /> <input name="Submit2" type="button"
								onclick="returnHall();" value="return to index" /></td>
						</tr>
						<tr>
							<td height="15" colspan="2">&nbsp;</td>
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

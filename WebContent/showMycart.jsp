<%@ page language="java" import="java.util.*,com.sp.model.*"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


ArrayList al=(ArrayList)request.getAttribute("mycartinfo");


MyCartBO mbo=(MyCartBO)session.getAttribute("mycart");
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'showMycart.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

<script type="text/javascript">
	//reaction to delete all the item in shopping cart
	function delAll(){
		window.open("ShoppingClServlet?type=delAll","_self");
	}
</script>
</head>

<body topmargin="0" background="images/bg.bmp">
	<center>

		<table width="80%" border="1" cellspacing="0" cellpadding="0" class = "table">
			<tr>
				<td align="center"><jsp:include flush="true" page="head.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center">
					<form action="ShoppingClServlet?type=updateGoods" method="post">
						<table width="100%" border="1" cellpadding="0" cellspacing="0"
							class="abc">
							<tr>
								<td align="center" colspan="6"><img
									src="images/cartnavi-1.gif" width="599" height="49" /></td>
							</tr>
							<tr align="center">
								<td width="21%">Id</td>
								<td width="25%">Name</td>
								<td width="27%">Price</td>
								<td colspan="3">Quantity</td>
							</tr>
							<%
      
      						for(int i=0;i<al.size();i++){
      						GoodsBean gb=(GoodsBean)al.get(i);
      						%>
							<tr align="center">
								<td><%=gb.getGoodsId() %></td>
								<td><%=gb.getGoodsName() %></td>
								<td>$<%=gb.getGoodsPrice() %></td>
								<td width="9%"><input type="hidden" name="goodsId"
									value="<%=gb.getGoodsId() %>" /><input name="newNums"
									type="text" size="7"
									value="<%=mbo.getGoodsNumById(gb.getGoodsId()+"") %>" /></td>
								<td width="9%"><a
									href="ShoppingClServlet?type=delGoods&goodsId=<%=gb.getGoodsId() %>">delete</a></td>
								<td width="9%"><a
									href="ShowGoodsClServlet?type=showDetail&goodsId=<%=gb.getGoodsId() %>">detail</a>
								<td>
							</tr>
							<%
      }
       %>
							<tr>
								<td>&nbsp;</td>
								<td align="center"><input onclick="delAll();" type="button"
									name="Submit" value="delete all" /></td>
								<td align="center"><input type="submit" name="Submit2"
									value="revise number" /></td>
								<td colspan="3">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="6">&nbsp;</td>
							</tr>
						</table>
					</form>
			<tr>
				<td colspan="6"><table class="abc" width="100%" border="1"
						cellspacing="0" cellpadding="0">
						<tr>
							<td width="46%" align="left">total price$<%=mbo.getAllPrice() %>,click
								<a href="index.jsp"> here </a> to continue shopping
							</td>
							<td width="54%" align="right"><a href="ShoppingCl2"><img
									border="0" src="images/cartnext.gif" width="87" height="19" /></a></td>
						</tr>
					</table></td>
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

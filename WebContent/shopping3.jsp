<%@ page language="java" import="java.util.*,com.sp.model.*"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

// to get user info
UserBean ub=(UserBean)session.getAttribute("userInfo");
//to get shopping cart info
ArrayList al=(ArrayList)request.getAttribute("mycartInfo");

//get shopping cart object
MyCartBO mcb=(MyCartBO)session.getAttribute("mycart");
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shopping3.jsp' starting page</title>

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
		<table width="80%" cellspacing="0" cellpadding="0" class ="table table-hover">
			<tr>
				<td align="center"><jsp:include flush="true" page="head.jsp"></jsp:include>
				</td>
			</tr>
			<tr>
				<td align="center"><table width="100%" border="1"
						cellspacing="0" cellpadding="0">
						<tr>
							<td align="center"><img src="images/cartnavi-3.gif"
								width="599" height="49" /></td>
						</tr>
						<tr>
							<td align="center">
							<table width="70%" border="1"
									cellpadding="0" cellspacing="0" class="table table-hover">
									<tr>
										<td colspan="2" align="center">your acccount info</td>
									</tr>
									<tr>
										<td width="50%" align="right">*username：</td>
										<td width="50%"><input type="text" name="textfield"
											value="<%=ub.getUsername() %>" /></td>
									</tr>
									<tr>
										<td align="right">*truename：</td>
										<td><input type="text" name="textfield2"
											value="<%=ub.getTruename() %>" /></td>
									</tr>
									<tr>
										<td align="right">*address：</td>
										<td><input type="text" name="textfield3"
											value="<%=ub.getAddress() %>" /></td>
									</tr>
									<tr>
										<td align="right">*tele-phone：</td>
										<td><input type="text" name="textfield4"
											value="<%=ub.getPhone() %>" /></td>
									</tr>
									<tr>
										<td align="right">*email：</td>
										<td><input type="text" name="textfield5"
											value="<%=ub.getEmail() %>" /></td>
									</tr>
									<tr>
										<td align="right">*postcode：</td>
										<td><input type="text" name="textfield6"
											value="<%=ub.getPostcode() %>" /></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td align="center"><table width="70%" border="1"
									cellpadding="0" cellspacing="0" class="abc">
									<tr>
										<td colspan="4" align="center">my shopping cart</td>
									</tr>
									<tr>
										<td align="center">id</td>
										<td align="center">product name</td>
										<td>price</td>
										<td>quant</td>
									</tr>
									<%
									if(al.size() != 0){ 
          							for(int i=0;i<al.size();i++){
          								GoodsBean gb=(GoodsBean)al.get(i);
          							%>
									<tr>
										<td align="center"><%=gb.getGoodsId() %></td>
										<td align="center"><%=gb.getGoodsName() %></td>
										<td><%=gb.getGoodsPrice() %>$</td>
										<td><%=mcb.getGoodsNumById(gb.getGoodsId()+"") %></td>
									</tr>
									<%
          							}
									}
           %>
									<tr>
										<td colspan="4">total price$ <%=mcb.getAllPrice() %></td>
									</tr>
									<tr>
										<td colspan="4" align="center"><input type="submit"
											name="Submit3" value="return to shopping cart" /></td>
									</tr>
								</table></td>
						</tr>
						<tr>
							<td align="right"><img src="images/cartpre.gif" width="87"
								height="19" /><a href="OrderClServlet"><img border="0"
									src="images/cartnext.gif" width="87" height="19" /></a></td>
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

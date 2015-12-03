<%@ page language="java" import="java.util.*,com.sp.model.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	GoodsBeanBO gbb = new GoodsBeanBO();
	String pageNow = (String) request.getAttribute("now");

	int n_pageNow = 1;
	if (pageNow != null) {

		n_pageNow = Integer.parseInt(pageNow);
	}

	ArrayList al = gbb.getGoodsByPage(6, n_pageNow);
	System.out.println("al.size=" + al.size());
%>
<table width="100%"  cellpadding="0" cellspacing="0"
	class="table table-hover">
	<tbody>
		<tr>
			<td colspan="3" align="left"><img src="images/popular.gif"
				width="836" height="63" /></td>
		</tr>
		<%
			int k = 0;
			for (int i = 0; i < 2; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < 3; j++) {
						GoodsBean gb = new GoodsBean();
						if (k < al.size()) {
							gb = (GoodsBean) al.get(k);
						} else {

							gb.setGoodsId(0);
							gb.setGoodsName("no such book");
							gb.setGoodsIntro("none");
							gb.setPhoto("none.jpg");
							gb.setGoodsPrice(0.0f);
						}
			%>
			<td width="33%" height="168" align="center">
				<table width="100%" height="168" cellpadding="0"
					cellspacing="0" class="table table-hover">
					<tbody>
					<tr>
						<td width="112" height="112" rowspan="3"><img
							src="images/<%=gb.getPhoto()%>" class= "img-rounded" width="112" height="112" /></td>
						<td width="130" height="48"></td>
					</tr>
					<tr>
						<td height="33" valign="top"><a
							href="ShowGoodsClServlet?type=showDetail&goodsId=<%=gb.getGoodsId()%>"><%=gb.getGoodsName()%></a>
						</td>
					</tr>
					<tr>
						<td height="22" valign="top">Price: $<%=gb.getGoodsPrice()%> 
						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">Introduction： <%=gb.getGoodsIntro()%>
						</td>
					</tr>
					</tbody>
				</table>
			</td>
			<%
				k++;
					}
			%>

		</tr>


		<%
			if (i == 0) {
		%>
		<tr>
			<td height="10" bgcolor="pink" colspan="3" align="center"></td>
		</tr>
		<%
			}
			}
		%>

		<tr>
			<td colspan="3" align="center">
				<%
					int pageCount = gbb.getPageCount(6);

					for (int i = 1; i <= pageCount; i++) {
				%> <a href="ShowGoodsClServlet?type=fenye&pageNow=<%=i%>">[<%=i%>]
			</a> <%
 	}
 %>
			</td>
		</tr>
		</tbody>
</table>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<table width="100%" class = "table table-hover">
	<tr>
		<td align="center"><img src="images/png/clown7.png" width="64"
			height="64" /></td>
	</tr>
	<tr>
		<td align="center"><div align="center">Advertisment</div></td>
	</tr>
	<tr>
		<td bgcolor="#FF9966">&nbsp;</td>
	</tr>
	<tr>
		<td><table width="100%" class = "table table-hover">
				<tr>
					<td colspan="3" align="center"><img src="images/ranking.jpg"
						width="318" height="159" /></td>
				</tr>
				<tr>
					<td align="center">Ranking</td>
					<td>Movie Name</td>
					<td>view times</td>
				</tr>
				<tr>
					<td>1</td>
					<td>The Shawshank Redemption</td>
					<td>1000</td>
				</tr>
				<tr>
					<td>2</td>
					<td>God Father</td>
					<td>780</td>
				</tr>
				<tr>
					<td>3</td>
					<td>The Dark Knight </td>
					<td>680</td>
				</tr>
				<tr>
					<td>4</td>
					<td>12 Angry Men</td>
					<td>620</td>
				</tr>
				<tr>
					<td>5</td>
					<td>Schindler's List </td>
					<td>600</td>
				</tr>
				<tr>
					<td>6</td>
					<td>Pulp Fiction </td>
					<td>580</td>
				</tr>
				<tr>
					<td>7</td>
					<td>The Good, the Bad and the Ugly</td>
					<td>500</td>
				</tr>
			</table></td>
	</tr>
</table>
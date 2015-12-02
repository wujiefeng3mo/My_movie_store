<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>Sign up page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/angular.min.js"></script>

</head>

<body topmargin="0" background="images/bg.bmp">
	<table width="80%" border="1" align="center" cellpadding="0"
		cellspacing="0" class="table table-hover">
		<tr>
			<td height="94" colspan="2" align="center"><jsp:include
					flush="true" page="head.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td align="center">
				<form ng-app="validate" ng-controller="validateControl"
					name="myForm" action="Register" method="post"
					role="form-horizontal" novalidate>
					<table width="100%" class="table">
						<tr>
							<td width="8%">username:</td>
							<td width="12%"><input name="username" ng-model="username"
								type="text" size="15" required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.username.$dirty && myForm.username.$invalid">
									<span ng-show="myForm.username.$error.required">*required</span></td>
						</tr>
						<tr>
							<td>password:</td>
							<td><input name="password" type="password" size="15"
								ng-model="password" required /></td>
							<td><span style="color: red"
								ng-show="myForm.password.$dirty && myForm.password.$invalid">
									<span ng-show="myForm.password.$error.required">*required</span></td>
						</tr>
						<tr>
							<td width="8%">truename:</td>
							<td width="12%"><input name="truename" type="text" size="15"
								ng-model="truename" required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.truename.$dirty && myForm.truename.$invalid">
									<span ng-show="myForm.truename.$error.required">*required</span></td>
						</tr>
						<tr>
							<td width="8%">email:</td>
							<td width="12%"><input name="email" type="email" size="15"
								ng-model="email" required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.email.$dirty && myForm.email.$invalid"> <span
									ng-show="myForm.email.$error.required">*required</span> <span
									ng-show="myForm.email.$error.email">*email is illegal</span></td>
						</tr>
						<tr>
							<td width="8%">phone:</td>
							<td width="12%"><input name="phone" type="tel" size="15"
								ng-model="phone" required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.phone.$dirty && myForm.phone.$invalid"> <span
									ng-show="myForm.phone.$error.required">*required</span></td>
						</tr>
						<tr>
							<td width="8%">address</td>
							<td width="12%"><input name="address" type="text" size="15"
								ng-model="address" required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.address.$dirty && myForm.address.$invalid">
									<span ng-show="myForm.address.$error.required">*required</span></td>
						</tr>
						<tr>
							<td width="8%">postcode:</td>
							<td width="12%"><input name="postcode" type="number"
								size="15" ng-model="postcode" ng-minlength=6 ng-maxlength=6
								required /></td>
							<td width="80%"><span style="color: red"
								ng-show="myForm.postcode.$dirty && myForm.postcode.$invalid">
									<span ng-show="myForm.postcode.$error.required">*required</span></td>
						</tr>
						<tr>
							<td><button type="submit" class="btn btn-default"
									ng-disabled="myForm.username.$dirty && myForm.username.$invalid||myForm.password.$dirty && myForm.password.$invalid
			||myForm.truename.$dirty && myForm.truename.$invalid||myForm.email.$dirty && myForm.email.$invalid||myForm.phone.$dirty && myForm.phone.$invalid||
			myForm.address.$dirty && myForm.address.$invalid||myForm.postcode.$dirty && myForm.postcode.$invalid||myForm.username.$pristine||myForm.password.$pristine||
			myForm.email.$pristine||myForm.truename.$pristine||myForm.postcode.$pristine||myForm.address.$pristine">sign
									up</button></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td height="62" colspan="2" align="center"><jsp:include
					flush="true" page="tail.jsp"></jsp:include></td>
		</tr>
	</table>
	<script>
		var app = angular.module('validate', []);
		app.controller('validateControl', function($scope) {

		});
	</script>
</body>
</html>

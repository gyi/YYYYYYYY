<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<s:iterator value="" id="">
			<tr>
				<td><a href="url"><img src="url" /></a></td>
				<td><a href="url">姓名</a></td>
				<td><a href="url">禁言</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
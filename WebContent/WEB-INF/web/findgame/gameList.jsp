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
	<div>
		<a href="url">最新</a>
		<a href="url">浏览量</a>
		<a href="url">评论量</a>
		<a href="url">下载量</a>
		<a href="url">赞量</a>
		
	</div>
	<table>
		<s:iterator value="" id="">
			<tr>
				<td><img src="url" /></td>
				<td><a href="url">游戏名字</a></td>
				<td><a href="url">用户名字</a></td>
				<td>时间</td>
				<s:iterator value="" id="">
					<td>标签</td>
				</s:iterator>
				<td>浏览量</td>
				<td>评论量</td>
				<td>下载量</td>
				<td>赞量</td>
				<td>踩量</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
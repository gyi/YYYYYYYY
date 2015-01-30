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
		<s:iterator value="" id="">
			好友申请
			<a href="url"><img src="url" /></a>
			<a href="url">名字</a>
			时间
			<a href="url">加</a>
			<a href="url">不加</a>
		</s:iterator>
	</div>
	<div>
		<s:iterator value="" id="">
			好友列表
			<a href="url"><img src="url" /></a>
			<a href="url">名字</a>
			时间
			<a href="url">发消息</a>
			<a href="url">删除</a>
		</s:iterator>
	</div>
</body>
</html>
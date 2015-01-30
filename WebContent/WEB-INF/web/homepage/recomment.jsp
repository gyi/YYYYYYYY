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
	<s:iterator value="" id="">
		分类
		<a href="url">更多</a>
		<s:iterator value="" id="">
			<img src="url" />
			<a href="url">游戏名字</a>
			<a href="url">用户名字</a>
		</s:iterator>
	</s:iterator>
</body>
</html>
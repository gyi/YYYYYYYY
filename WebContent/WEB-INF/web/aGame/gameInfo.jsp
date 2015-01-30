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
		名字 <img src="url" />
		<div>基本信息</div>
		<div>
			<a href="url">编辑</a> <a href="url">删除</a>
		</div>
		<div>描述</div>
		<div>
			<s:iterator value="" id="">
				<img src="url" />
			</s:iterator>
		</div>
		<div>
			<s:iterator value="" id="">
				<video controls="controls" autoplay="autoplay"> 
				
				</video>
			</s:iterator>
		</div>
		<div>
			评论
		</div>
	</div>
</body>
</html>
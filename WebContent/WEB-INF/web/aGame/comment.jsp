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
		<img src="url"/>
		<input type="text"/>
	</div>
	<div>
		<s:iterator value="" id="">
			楼层数
			<img src="url" />
			<a href="url">玩家名字</a>
			时间
			评论内容
			<a href="url">评论 评论数</a>
		</s:iterator>
	</div>
</body>
</html>
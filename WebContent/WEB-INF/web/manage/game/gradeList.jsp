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
		<table>
			<s:iterator value="" id="">
				<tr>
					<td>
						等级名
					</td>
					<td>
						等级描述
					</td>
					<td>
						<input type="button" value="编辑" />
						<input type="button" value="删除" />
					</td>
					
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>
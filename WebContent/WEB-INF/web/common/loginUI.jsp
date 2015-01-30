<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><s:text name="gccp.common.loginUI" /></title>
</head>
<body>
	<div>
		<label><s:text name="gccp.user.email" />:</label>
		<input type="text" name="userEmail" id="userEmail"/>
		<label><s:text name="gccp.user.password" />:</label>
		<input type="password" name="password" id="password"/>
		<label><s:text name="gccp.common.captcha" />:</label>
		<input type="text" name="captcha" id="captcha"/>
		<img src="#" id="captchaIcon"/>
		<input type="button" id="loginBtn" value="gccp.common.login" onchange="loginBtn()"/>
	</div>
</body>
</html>
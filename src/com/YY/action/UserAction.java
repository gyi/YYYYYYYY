package com.YY.action;

import javax.annotation.Resource;

import com.YY.model.TbUser;
import com.YY.service.UserService;
import com.opensymphony.xwork2.ActionContext;

public class UserAction extends BaseAction<TbUser> {

	private static final long serialVersionUID = 2803125508081138059L;

	/** 登录页面 */
	public String loginUI() {
		return "loginUI";
	}

	/** 登陆操作 */
	public String login() {
		TbUser user = userService.findByuserEmailAndPassword(model.getUserEmail(), model.getPassword());
		if (user == null) {
			addFieldError("login", "用户名或密码不正确！");
			return "loginUI";
		} else {
			// 登录用户
			ActionContext.getContext().getSession().put("user", user);
			return "toIndex";
		}
	}

	@Resource
	protected UserService userService;
}

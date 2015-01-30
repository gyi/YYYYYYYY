package com.YY.tab;

import javax.servlet.jsp.tagext.TagSupport;

import com.YY.model.TbGame;
import com.YY.model.TbUser;
import com.YY.service.GameService;
import com.opensymphony.xwork2.ActionContext;

public class rightTab extends TagSupport {

	private static final long serialVersionUID = -9061309742324328910L;

	/**
	 * notUser 用户未登陆 ;user 用户登录 ;notAuthor不是作者; author 是作者; notSelf 不是本人; self
	 * 是本人; notAdmin 不是管理员; admin 是管理员
	 */
	private String rightType;

	private long oId;

	private GameService gameService;

	public int doStartTag() {
		TbUser user = (TbUser) ActionContext.getContext().getSession().get("user");
		switch (rightType) {
		case "notUser": {
			if (user == null) {
				return TagSupport.EVAL_BODY_INCLUDE;
			} else {
				return TagSupport.SKIP_BODY;
			}
		}
		case "user": {
			if (user == null) {
				return TagSupport.SKIP_BODY;
			} else {
				return TagSupport.EVAL_BODY_INCLUDE;
			}
		}
		case "notAuthor": {
			TbGame game = gameService.getById(oId);
			if (game.getUserId() == user.getUserId()) {
				return TagSupport.SKIP_BODY;
			} else {
				return TagSupport.EVAL_BODY_INCLUDE;
			}
		}
		case "author": {
			TbGame game = gameService.getById(oId);
			if (game.getUserId() == user.getUserId()) {
				return TagSupport.EVAL_BODY_INCLUDE;
			} else {
				return TagSupport.SKIP_BODY;
			}
		}
		case "notSelf": {
			if (oId == user.getId()) {
				return TagSupport.SKIP_BODY;
			} else {
				return TagSupport.EVAL_BODY_INCLUDE;
			}
		}
		case "self": {
			if (oId == user.getId()) {
				return TagSupport.EVAL_BODY_INCLUDE;
			} else {
				return TagSupport.SKIP_BODY;
			}
		}
		case "notAdmin": {
			if (1 == user.getRoleId()) {
				return TagSupport.SKIP_BODY;
			} else {
				return TagSupport.EVAL_BODY_INCLUDE;
			}
		}
		case "admin": {
			if (1 == user.getRoleId()) {
				return TagSupport.EVAL_BODY_INCLUDE;
			} else {
				return TagSupport.SKIP_BODY;
			}
		}
		default:
			try {
				throw new Exception("rightType");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return TagSupport.SKIP_BODY;
	}

	public String getRightType() {
		return rightType;
	}

	public void setRightType(String rightType) {
		this.rightType = rightType;
	}

	public long getoId() {
		return oId;
	}

	public void setoId(long oId) {
		this.oId = oId;
	}

}

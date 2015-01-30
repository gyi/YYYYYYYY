package com.YY.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckPrivilegeInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 6408474801336020365L;

	public String intercept(ActionInvocation invocation) throws Exception {

		return invocation.invoke();
	}

}

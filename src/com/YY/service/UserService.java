package com.YY.service;

import com.YY.model.TbUser;

public interface UserService extends DaoSupport<TbUser> {

	TbUser findByuserEmailAndPassword(String userEmail, String password);

}

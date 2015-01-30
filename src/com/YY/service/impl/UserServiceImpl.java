package com.YY.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.YY.model.TbUser;
import com.YY.service.UserService;

@Service
@Transactional
public class UserServiceImpl extends DaoSupportImpl<TbUser> implements UserService {

	public TbUser findByuserEmailAndPassword(String userEmail, String password) {
		// 使用密码的MD5摘要进行对比
		String md5Digest = DigestUtils.md5Hex(password);
		return (TbUser) getSession().createQuery(//
				"FROM User u WHERE u.userEmail=? AND u.password=?")//
				.setParameter(0, userEmail)//
				.setParameter(1, md5Digest)//
				.uniqueResult();
	}

}

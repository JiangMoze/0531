package com.weikun.service;

import com.weikun.dao.IUserDAO;
import com.weikun.dao.UserDAOImpl;
import com.weikun.vo.BBSUser;

public class UserServiceImpl implements IUserService {
	private IUserDAO dao=new UserDAOImpl();
	
	@Override
	public boolean login(BBSUser user) {
		// TODO Auto-generated method stub
		return dao.login(user);
	}

}

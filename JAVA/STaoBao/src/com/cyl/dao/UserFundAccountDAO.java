package com.cyl.dao;

import com.cyl.Idao.IUserFundAccountDAO;
import com.cyl.bean.pojo.UserFundAccount;

public class UserFundAccountDAO extends CommonDAO<UserFundAccount> implements
		IUserFundAccountDAO {

	public UserFundAccountDAO() {
		super("UserFundAccountMapper");
	}

}

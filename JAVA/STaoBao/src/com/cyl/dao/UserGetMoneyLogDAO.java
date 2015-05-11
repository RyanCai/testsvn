package com.cyl.dao;

import com.cyl.Idao.IUserGetMoneyLogDAO;
import com.cyl.bean.pojo.UserGetMoneyLog;

public class UserGetMoneyLogDAO extends CommonDAO<UserGetMoneyLog> implements
		IUserGetMoneyLogDAO {

	public UserGetMoneyLogDAO() {
		super("UserGetMoneyLogMapper");
	}

}

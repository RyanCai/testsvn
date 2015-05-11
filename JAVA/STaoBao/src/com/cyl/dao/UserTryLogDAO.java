package com.cyl.dao;

import com.cyl.Idao.IUserTryLogDAO;
import com.cyl.bean.pojo.UserTryLog;

public class UserTryLogDAO extends CommonDAO<UserTryLog> implements IUserTryLogDAO {

	public UserTryLogDAO() {
		super("UserTryLogMapper");
	}

}

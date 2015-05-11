package com.cyl.dao;

import com.cyl.Idao.IUserRechargeDAO;
import com.cyl.bean.pojo.UserRecharge;

public class UserRechargeDAO extends CommonDAO<UserRecharge> implements IUserRechargeDAO {

	public UserRechargeDAO() {
		super("UserRechargeMapper");
	}

}

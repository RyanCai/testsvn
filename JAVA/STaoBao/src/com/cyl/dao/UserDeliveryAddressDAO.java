package com.cyl.dao;

import com.cyl.Idao.IUserDeliveryAddressDAO;
import com.cyl.bean.pojo.UserDeliveryAddress;

public class UserDeliveryAddressDAO extends CommonDAO<UserDeliveryAddress> implements
		IUserDeliveryAddressDAO {

	public UserDeliveryAddressDAO() {
		super("UserDeliveryAddressMapper");
	}

}

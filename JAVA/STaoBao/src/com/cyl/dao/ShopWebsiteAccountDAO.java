package com.cyl.dao;

import com.cyl.Idao.IShopWebsiteAccountDAO;
import com.cyl.bean.pojo.ShopWebsiteAccount;

public class ShopWebsiteAccountDAO extends CommonDAO<ShopWebsiteAccount> implements
		IShopWebsiteAccountDAO {

	public ShopWebsiteAccountDAO() {
		super("ShopWebsiteAccountMapper");
	}

}

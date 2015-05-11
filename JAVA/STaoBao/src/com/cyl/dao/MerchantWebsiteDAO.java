package com.cyl.dao;

import com.cyl.Idao.IMerchantWebsiteDAO;
import com.cyl.bean.pojo.MerchantWebsite;

public class MerchantWebsiteDAO extends CommonDAO<MerchantWebsite> implements
		IMerchantWebsiteDAO {

	public MerchantWebsiteDAO() {
		super("MerchantWebsiteMapper");
	}

}

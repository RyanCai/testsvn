package com.cyl.dao;

import com.cyl.Idao.IVIPBeanDAO;
import com.cyl.bean.pojo.VIPBean;

public class VIPBeanDAO extends CommonDAO<VIPBean> implements IVIPBeanDAO {

	public VIPBeanDAO() {
		super("VIPBeanMapper");
	}

}

package com.cyl.dao;

import com.cyl.Idao.ISysAllMoneyDAO;
import com.cyl.bean.pojo.SysAllMoney;

public class SysAllMoneyDAO extends CommonDAO<SysAllMoney> implements ISysAllMoneyDAO {

	public SysAllMoneyDAO() {
		super("SysAllMoneyMapper");
	}

}

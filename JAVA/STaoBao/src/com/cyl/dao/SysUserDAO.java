package com.cyl.dao;

import com.cyl.Idao.ISysUserDAO;
import com.cyl.bean.pojo.SysUser;

public class SysUserDAO extends CommonDAO<SysUser> implements ISysUserDAO {

	public SysUserDAO() {
		super("SysUserMapper");
	}

}

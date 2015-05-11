package com.cyl.Service;

import java.util.List;

import com.cyl.IService.ISysUserService;
import com.cyl.bean.pojo.SysUser;
import com.cyl.dao.SysUserDAO;

public class SysUserService implements ISysUserService {
	
	private SysUserDAO userdao=new SysUserDAO();

	@Override
	public int deleteByPrimaryKey(String key) {
		return userdao.deleteByPrimaryKey(key);
	}

	@Override
	public int insert(SysUser record) {
		return userdao.insert(record);
	}

	@Override
	public int insertSelective(SysUser record) {
		return userdao.insertSelective(record);
	}

	@Override
	public SysUser selectByPrimaryKey(String key) {
		return userdao.selectByPrimaryKey(key);
	}

	@Override
	public int updateByPrimaryKeySelective(SysUser record) {
		return userdao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(SysUser record) {
		return userdao.updateByPrimaryKey(record);
	}

	@Override
	public int selectCount(SysUser record) {
		return userdao.selectCount(record);
	}

	@Override
	public List<SysUser> selectList(SysUser record) {
		return userdao.selectList(record);
	}

}

package com.cyl.IService;

import java.util.List;

import com.cyl.bean.pojo.SysUser;

public interface ISysUserService {
	
	public int deleteByPrimaryKey(String key);

	public int insert(SysUser record);

	public int insertSelective(SysUser record);

	public SysUser selectByPrimaryKey(String key);

	public int updateByPrimaryKeySelective(SysUser record);

	public int updateByPrimaryKey(SysUser record);
	
	public int selectCount(SysUser record);
	
	public List<SysUser> selectList(SysUser record);

}

package com.cyl.IService;

import com.cyl.bean.pojo.UserGetMoneyLog;
import com.cyl.frame.common.Response;

public interface IUserGetMoneyLogService {

	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(UserGetMoneyLog record);

	public Response insertSelective(UserGetMoneyLog record);

	public UserGetMoneyLog selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(UserGetMoneyLog record);

	public Response updateByPrimaryKey(UserGetMoneyLog record);
	
	public Response selectCount(UserGetMoneyLog record);
	
	public Response selectList(UserGetMoneyLog record);
}
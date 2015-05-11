package com.cyl.IService;

import com.cyl.bean.pojo.UserTryLog;
import com.cyl.frame.common.Response;

public interface IUserTryLogService {
	
	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(UserTryLog record);

	public Response insertSelective(UserTryLog record);

	public UserTryLog selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(UserTryLog record);

	public Response updateByPrimaryKey(UserTryLog record);
	
	public Response selectCount(UserTryLog record);
	
	public Response selectList(UserTryLog record);

}

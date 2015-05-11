package com.cyl.IService;

import com.cyl.bean.pojo.UserRecharge;
import com.cyl.frame.common.Response;

public interface IUserRechargeService {

	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(UserRecharge record);

	public Response insertSelective(UserRecharge record);

	public UserRecharge selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(UserRecharge record);

	public Response updateByPrimaryKey(UserRecharge record);
	
	public Response selectCount(UserRecharge record);
	
	public Response selectList(UserRecharge record);
}
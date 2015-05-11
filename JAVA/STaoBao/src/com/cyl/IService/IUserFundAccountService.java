package com.cyl.IService;

import com.cyl.bean.pojo.UserFundAccount;
import com.cyl.frame.common.Response;

public interface IUserFundAccountService {

	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(UserFundAccount record);

	public Response insertSelective(UserFundAccount record);

	public UserFundAccount selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(UserFundAccount record);

	public Response updateByPrimaryKey(UserFundAccount record);
	
	public Response selectCount(UserFundAccount record);
	
	public Response selectList(UserFundAccount record);
}
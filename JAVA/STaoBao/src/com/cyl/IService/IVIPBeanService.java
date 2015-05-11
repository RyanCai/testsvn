package com.cyl.IService;

import com.cyl.bean.pojo.VIPBean;
import com.cyl.frame.common.Response;

public interface IVIPBeanService {

	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(VIPBean record);

	public Response insertSelective(VIPBean record);

	public VIPBean selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(VIPBean record);

	public Response updateByPrimaryKey(VIPBean record);
	
	public Response selectCount(VIPBean record);
	
	public Response selectList(VIPBean record);
}
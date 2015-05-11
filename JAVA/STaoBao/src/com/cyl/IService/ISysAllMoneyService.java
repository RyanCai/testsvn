package com.cyl.IService;

import com.cyl.bean.pojo.SysAllMoney;
import com.cyl.frame.common.Response;

public interface ISysAllMoneyService {

	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(SysAllMoney record);

	public Response insertSelective(SysAllMoney record);

	public SysAllMoney selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(SysAllMoney record);

	public Response updateByPrimaryKey(SysAllMoney record);
	
	public Response selectCount(SysAllMoney record);
	
	public Response selectList(SysAllMoney record);
}
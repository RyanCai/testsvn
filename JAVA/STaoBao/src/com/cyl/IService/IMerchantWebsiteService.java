package com.cyl.IService;

import com.cyl.bean.pojo.MerchantWebsite;
import com.cyl.bean.pojo.Product;
import com.cyl.frame.common.Response;

public interface IMerchantWebsiteService {
	
	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(MerchantWebsite record);

	public Response insertSelective(MerchantWebsite record);

	public MerchantWebsite selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(MerchantWebsite record);

	public Response updateByPrimaryKey(MerchantWebsite record);
	
	public Response selectCount(MerchantWebsite record);
	
	public Response selectList(MerchantWebsite record);
}
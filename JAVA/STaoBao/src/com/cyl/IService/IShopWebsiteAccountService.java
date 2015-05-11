package com.cyl.IService;

import com.cyl.bean.pojo.ShopWebsiteAccount;
import com.cyl.frame.common.Response;

public interface IShopWebsiteAccountService {
	
	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(ShopWebsiteAccount record);

	public Response insertSelective(ShopWebsiteAccount record);

	public ShopWebsiteAccount selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(ShopWebsiteAccount record);

	public Response updateByPrimaryKey(ShopWebsiteAccount record);
	
	public Response selectCount(ShopWebsiteAccount record);
	
	public Response selectList(ShopWebsiteAccount record);
}
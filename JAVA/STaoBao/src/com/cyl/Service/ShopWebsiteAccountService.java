package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IShopWebsiteAccountService;
import com.cyl.bean.pojo.ShopWebsiteAccount;
import com.cyl.dao.ShopWebsiteAccountDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class ShopWebsiteAccountService implements IShopWebsiteAccountService {

	private ShopWebsiteAccountDAO dao = new ShopWebsiteAccountDAO();
	
	@Override
	public Response deleteByPrimaryKey(String key) {
		Response res = new Response();
		try {
			if (key != null && !key.equals("")) {
				res.setInts(dao.deleteByPrimaryKey(key)); 
			}
		} catch (Exception e) {
			res.setStatusCode(StatusCode.ERROR);
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Response deleteByPrimaryKey(int key) {
		Response res = new Response();
		try {
			if (key >0) {
				res.setInts(dao.deleteByPrimaryKey(key)); 
			}
		} catch (Exception e) {
			res.setStatusCode(StatusCode.ERROR);
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Response insert(ShopWebsiteAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = dao.insert(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response insertSelective(ShopWebsiteAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = dao.insertSelective(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public ShopWebsiteAccount selectByPrimaryKey(String key) {
		Response res = new Response();
		ShopWebsiteAccount p = null;
		try {
			if (key != null && !key.equals("")) {
				p = dao.selectByPrimaryKey(key);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return p;
	}

	@Override
	public Response updateByPrimaryKeySelective(ShopWebsiteAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = dao.updateByPrimaryKeySelective(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response updateByPrimaryKey(ShopWebsiteAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = dao.updateByPrimaryKey(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response selectCount(ShopWebsiteAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = dao.selectCount(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response selectList(ShopWebsiteAccount record) {
		Response res = new Response();
		List<ShopWebsiteAccount> list = new ArrayList<ShopWebsiteAccount>();
		try {
			if (record != null) {
				list = dao.selectList(record);
			  int i = dao.selectCount(record);
			  res.setAllSize(i);
			  res.setList(list);
			}
		} catch (Exception e) {
			res.setStatusCode(StatusCode.ERROR);
			e.printStackTrace();
		}
		return res;
	}

}

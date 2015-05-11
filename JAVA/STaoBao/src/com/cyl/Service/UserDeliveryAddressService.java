package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IUserDeliveryAddressService;
import com.cyl.bean.pojo.Product;
import com.cyl.bean.pojo.UserDeliveryAddress;
import com.cyl.dao.ProductDAO;
import com.cyl.dao.UserDeliveryAddressDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;
/**
 * 
 *@category：用户收货地址处理Service 
 * @author RyanCai
 * @日期：2015年5月7日 下午1:03:13
 */
public class UserDeliveryAddressService implements IUserDeliveryAddressService {
	
	private UserDeliveryAddressDAO dao = new UserDeliveryAddressDAO();
	
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
	public Response insert(UserDeliveryAddress record) {
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
	public Response insertSelective(UserDeliveryAddress record) {
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
	public UserDeliveryAddress selectByPrimaryKey(String key) {
		Response res = new Response();
		UserDeliveryAddress p = null;
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
	public Response updateByPrimaryKeySelective(UserDeliveryAddress record) {
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
	public Response updateByPrimaryKey(UserDeliveryAddress record) {
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
	public Response selectCount(UserDeliveryAddress record) {
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
	public Response selectList(UserDeliveryAddress record) {
		Response res = new Response();
		List<UserDeliveryAddress> list = new ArrayList<UserDeliveryAddress>();
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

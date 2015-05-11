package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IUserFundAccountService;
import com.cyl.bean.pojo.UserFundAccount;
import com.cyl.dao.UserFundAccountDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class UserFundAccountService implements IUserFundAccountService {

	private UserFundAccountDAO pdao = new UserFundAccountDAO();

	@Override
	public Response deleteByPrimaryKey(String key) {
		Response res = new Response();
//		int i = 0;
		try {
			if (key != null && !key.equals("")) {
				res.setInts(pdao.deleteByPrimaryKey(key)); 
			}
		} catch (Exception e) {
			res.setStatusCode(StatusCode.ERROR);
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Response insert(UserFundAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = pdao.insert(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response insertSelective(UserFundAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = pdao.insertSelective(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public UserFundAccount selectByPrimaryKey(String key) {
		Response res = new Response();
		UserFundAccount p = null;
		try {
			if (key != null && !key.equals("")) {
				p = pdao.selectByPrimaryKey(key);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return p;
	}

	@Override
	public Response updateByPrimaryKeySelective(UserFundAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = pdao.updateByPrimaryKeySelective(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response updateByPrimaryKey(UserFundAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = pdao.updateByPrimaryKey(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response selectCount(UserFundAccount record) {
		Response res = new Response();
		int i = 0;
		try {
			if (record != null) {
				i = pdao.selectCount(record);
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.setStatusCode(StatusCode.ERROR);
		}
		return res;
	}

	@Override
	public Response selectList(UserFundAccount record) {
		Response res = new Response();
		List<UserFundAccount> list = new ArrayList<UserFundAccount>();
		try {
			if (record != null) {
				list = pdao.selectList(record);
			  int i = pdao.selectCount(record);
			  res.setAllSize(i);
			  res.setList(list);
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
				res.setInts(pdao.deleteByPrimaryKey(key)); 
			}
		} catch (Exception e) {
			res.setStatusCode(StatusCode.ERROR);
			e.printStackTrace();
		}
		return res;
	}

}

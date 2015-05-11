package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IUserRechargeService;
import com.cyl.bean.pojo.UserRecharge;
import com.cyl.dao.UserRechargeDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class UserRechargeService implements IUserRechargeService {
	
	private UserRechargeDAO pdao = new UserRechargeDAO();

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
	public Response insert(UserRecharge record) {
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
	public Response insertSelective(UserRecharge record) {
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
	public UserRecharge selectByPrimaryKey(String key) {
		Response res = new Response();
		UserRecharge p = null;
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
	public Response updateByPrimaryKeySelective(UserRecharge record) {
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
	public Response updateByPrimaryKey(UserRecharge record) {
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
	public Response selectCount(UserRecharge record) {
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
	public Response selectList(UserRecharge record) {
		Response res = new Response();
		List<UserRecharge> list = new ArrayList<UserRecharge>();
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

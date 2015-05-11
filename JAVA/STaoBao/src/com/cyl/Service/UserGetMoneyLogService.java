package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IUserGetMoneyLogService;
import com.cyl.bean.pojo.UserGetMoneyLog;
import com.cyl.dao.UserGetMoneyLogDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class UserGetMoneyLogService implements IUserGetMoneyLogService {
	
	private UserGetMoneyLogDAO pdao = new UserGetMoneyLogDAO();

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
	public Response insert(UserGetMoneyLog record) {
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
	public Response insertSelective(UserGetMoneyLog record) {
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
	public UserGetMoneyLog selectByPrimaryKey(String key) {
		Response res = new Response();
		UserGetMoneyLog p = null;
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
	public Response updateByPrimaryKeySelective(UserGetMoneyLog record) {
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
	public Response updateByPrimaryKey(UserGetMoneyLog record) {
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
	public Response selectCount(UserGetMoneyLog record) {
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
	public Response selectList(UserGetMoneyLog record) {
		Response res = new Response();
		List<UserGetMoneyLog> list = new ArrayList<UserGetMoneyLog>();
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

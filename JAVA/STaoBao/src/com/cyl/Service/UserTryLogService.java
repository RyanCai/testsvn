package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IUserTryLogService;
import com.cyl.bean.pojo.UserTryLog;
import com.cyl.dao.UserTryLogDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class UserTryLogService implements IUserTryLogService {
	
   private UserTryLogDAO dao = new UserTryLogDAO();
	
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
	public Response insert(UserTryLog record) {
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
	public Response insertSelective(UserTryLog record) {
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
	public UserTryLog selectByPrimaryKey(String key) {
		Response res = new Response();
		UserTryLog p = null;
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
	public Response updateByPrimaryKeySelective(UserTryLog record) {
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
	public Response updateByPrimaryKey(UserTryLog record) {
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
	public Response selectCount(UserTryLog record) {
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
	public Response selectList(UserTryLog record) {
		Response res = new Response();
		List<UserTryLog> list = new ArrayList<UserTryLog>();
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

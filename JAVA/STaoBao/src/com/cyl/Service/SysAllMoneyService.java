package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.ISysAllMoneyService;
import com.cyl.bean.pojo.SysAllMoney;
import com.cyl.dao.SysAllMoneyDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class SysAllMoneyService implements ISysAllMoneyService {

	private SysAllMoneyDAO dao = new SysAllMoneyDAO();
	
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
	public Response insert(SysAllMoney record) {
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
	public Response insertSelective(SysAllMoney record) {
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
	public SysAllMoney selectByPrimaryKey(String key) {
		Response res = new Response();
		SysAllMoney p = null;
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
	public Response updateByPrimaryKeySelective(SysAllMoney record) {
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
	public Response updateByPrimaryKey(SysAllMoney record) {
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
	public Response selectCount(SysAllMoney record) {
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
	public Response selectList(SysAllMoney record) {
		Response res = new Response();
		List<SysAllMoney> list = new ArrayList<SysAllMoney>();
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

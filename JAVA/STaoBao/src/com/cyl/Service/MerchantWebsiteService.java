package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IMerchantWebsiteService;
import com.cyl.bean.pojo.MerchantWebsite;
import com.cyl.dao.MerchantWebsiteDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

public class MerchantWebsiteService implements IMerchantWebsiteService {

	private MerchantWebsiteDAO pdao = new MerchantWebsiteDAO();

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
	public Response insert(MerchantWebsite record) {
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
	public Response insertSelective(MerchantWebsite record) {
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
	public MerchantWebsite selectByPrimaryKey(String key) {
		Response res = new Response();
		MerchantWebsite p = null;
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
	public Response updateByPrimaryKeySelective(MerchantWebsite record) {
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
	public Response updateByPrimaryKey(MerchantWebsite record) {
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
	public Response selectCount(MerchantWebsite record) {
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
	public Response selectList(MerchantWebsite record) {
		Response res = new Response();
		List<MerchantWebsite> list = new ArrayList<MerchantWebsite>();
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

package com.cyl.Service;

import java.util.ArrayList;
import java.util.List;

import com.cyl.IService.IProductService;
import com.cyl.bean.pojo.Product;
import com.cyl.dao.ProductDAO;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;

/**
 * 商品处理Service
 * 
 * @author Administrator
 *
 */
public class ProductService implements IProductService {

	private ProductDAO pdao = new ProductDAO();

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
	public Response insert(Product record) {
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
	public Response insertSelective(Product record) {
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
	public Product selectByPrimaryKey(String key) {
		Response res = new Response();
		Product p = null;
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
	public Response updateByPrimaryKeySelective(Product record) {
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
	public Response updateByPrimaryKey(Product record) {
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
	public Response selectCount(Product record) {
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
	public Response selectList(Product record) {
		Response res = new Response();
		List<Product> list = new ArrayList<Product>();
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

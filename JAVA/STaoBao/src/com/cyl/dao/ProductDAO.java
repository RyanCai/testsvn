package com.cyl.dao;

import com.cyl.Idao.IProductDAO;
import com.cyl.bean.pojo.Product;
/**
 * 商品处理DAO
 * @author Administrator
 *
 */
public class ProductDAO extends CommonDAO<Product> implements IProductDAO {

	public ProductDAO() {
		super("ProductMapper");
	}

}

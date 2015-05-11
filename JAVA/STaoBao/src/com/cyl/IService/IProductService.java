package com.cyl.IService;
import com.cyl.bean.pojo.Product;
import com.cyl.frame.common.Response;
/**
 * 商品处理service
 * @author Administrator
 *
 */
public interface IProductService {
	
	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(Product record);

	public Response insertSelective(Product record);

	public Product selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(Product record);

	public Response updateByPrimaryKey(Product record);
	
	public Response selectCount(Product record);
	
	public Response selectList(Product record);

}

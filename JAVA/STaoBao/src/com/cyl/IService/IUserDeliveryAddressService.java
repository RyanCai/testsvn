package com.cyl.IService;
import com.cyl.bean.pojo.Product;
import com.cyl.bean.pojo.UserDeliveryAddress;
import com.cyl.frame.common.Response;
/**
 * 用户地址处理service
 * @author Administrator
 *
 */
public interface IUserDeliveryAddressService {
	
	public Response deleteByPrimaryKey(String key);
	
	public Response deleteByPrimaryKey(int key);

	public Response insert(UserDeliveryAddress record);

	public Response insertSelective(UserDeliveryAddress record);

	public UserDeliveryAddress selectByPrimaryKey(String key);

	public Response updateByPrimaryKeySelective(UserDeliveryAddress record);

	public Response updateByPrimaryKey(UserDeliveryAddress record);
	
	public Response selectCount(UserDeliveryAddress record);
	
	public Response selectList(UserDeliveryAddress record);

}

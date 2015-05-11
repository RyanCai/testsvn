package com.cyl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cyl.IService.IUserDeliveryAddressService;
import com.cyl.Service.UserDeliveryAddressService;
import com.cyl.bean.pojo.SysUser;
import com.cyl.bean.pojo.UserDeliveryAddress;
import com.cyl.frame.common.BaseAction;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;
import com.cyl.frame.util.YXObject;

/***
 * 
 *@category：用户地址处理action
 * @author RyanCai
 * @日期：2015年5月7日 下午1:12:28
 */
@Controller
public class UserDeliveryAddressController  extends BaseAction {
	
	private IUserDeliveryAddressService service = null;

	public UserDeliveryAddressController() {
		service = new UserDeliveryAddressService();
	}
	
	/**
	 * 查询用户地址列表处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selectUDAddress")
	@ResponseBody
	public void selectUDAddress(HttpServletRequest request,
			HttpServletResponse response) {
		UserDeliveryAddress uda = new UserDeliveryAddress();
		YXObject.setValue(uda, request);
		Response res = new Response();
		res = service.selectList(uda);
		if (res.getStatusCode() == StatusCode.SUCCESS) {
			List<UserDeliveryAddress> list = (List<UserDeliveryAddress>) res.getList();
			int allsize = res.getAllSize();
			System.out
					.println("**********************************************查询成功"+allsize);
			if (list != null) {
				this.outJson(list, allsize, "查询成功");

			}
		}
	}

	/**
	 * 添加地址处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("addUDAddress")
	@ResponseBody
	public void addUDAddress(HttpServletRequest request,
			HttpServletResponse response) {
		UserDeliveryAddress uda = new UserDeliveryAddress();
		YXObject.setValue(uda, request);
		SysUser user = (SysUser) session.getAttribute("sysUser");
		uda.setUserid(user.getId());
		uda.setState(1);
		uda.setSysstate(1);
		Response res = new Response();
		res = service.insertSelective(uda);
		if (res.getStatusCode() == StatusCode.SUCCESS) {
			System.out.println("*************************添加地址成功");
			this.outJson("success", "添加地址成功");
		} else {
			this.outJson("fail", "添加地址失败");
		}
	}

	/**
	 * 添加地址处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("updateUDAddress")
	@ResponseBody
	public void updateUDAddress(HttpServletRequest request,
			HttpServletResponse response) {
		UserDeliveryAddress uda = new UserDeliveryAddress();
		YXObject.setValue(uda, request);
		uda.setState(1);
		uda.setSysstate(1);
		if (uda != null && uda.getId() > 0) {
			Response res = new Response();
			res = service.updateByPrimaryKeySelective(uda);
			if (res.getStatusCode() == StatusCode.SUCCESS) {
				System.out.println("*************************修改地址成功");
				this.outJson("success", "修改地址成功");
			} else {
				this.outJson("fail", "修改地址失败");
			}
		} else {
			this.outJson("fail", "添加地址失败");
		}
	}

	/**
	 * 添加地址处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("deleteUDAddress")
	@ResponseBody
	public void deleteUDAddress(HttpServletRequest request,
			HttpServletResponse response) {
		UserDeliveryAddress uda = new UserDeliveryAddress();
		YXObject.setValue(uda, request);
		if (uda != null && uda.getId() > 0) {
			Response res = new Response();
			res = service.deleteByPrimaryKey(uda.getId());
			if (res.getStatusCode() == StatusCode.SUCCESS) {
				System.out.println("*************************删除地址成功");
				this.outJson("success", "删除地址成功");
			} else {
				this.outJson("fail", "删除地址失败");
			}
		} else {
			this.outJson("fail", "删除地址失败");
		}
	}
	
	
	
	
	
	
	

}

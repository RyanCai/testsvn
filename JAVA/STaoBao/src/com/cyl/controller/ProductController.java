package com.cyl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cyl.IService.IProductService;
import com.cyl.Service.ProductService;
import com.cyl.bean.pojo.Product;
import com.cyl.bean.pojo.SysUser;
import com.cyl.frame.common.BaseAction;
import com.cyl.frame.common.Response;
import com.cyl.frame.common.StatusCode;
import com.cyl.frame.util.YXObject;

/**
 * 商品处理Action
 * 
 * @author Administrator
 * 
 */
@Controller
public class ProductController extends BaseAction {

	private IProductService service = null;

	public ProductController() {
		service = new ProductService();
	}

	/**
	 * 查询商品列表处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("selectProducts")
	@ResponseBody
	public void selectProducts(HttpServletRequest request,
			HttpServletResponse response) {
		Product product = new Product();
		YXObject.setValue(product, request);
		Response res = new Response();
		res = service.selectList(product);
		if (res.getStatusCode() == StatusCode.SUCCESS) {
			List<Product> list = (List<Product>) res.getList();
			int allsize = res.getAllSize();
			System.out
					.println("**********************************************查询成功"+allsize);
			if (list != null) {
				this.outJson(list, allsize, "查询成功");

			}
		}
	}

	/**
	 * 添加商品处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("addProducts")
	@ResponseBody
	public void addProducts(HttpServletRequest request,
			HttpServletResponse response) {
		Product product = new Product();
		YXObject.setValue(product, request);
		SysUser user = (SysUser) session.getAttribute("sysUser");
		product.setMerchantid(user.getId());
		product.setState(1);
		product.setSysState(1);
		Response res = new Response();
		res = service.insertSelective(product);
		if (res.getStatusCode() == StatusCode.SUCCESS) {
			System.out.println("*************************添加商品成功");
			this.outJson("success", "添加商品成功");
		} else {
			this.outJson("fail", "添加商品失败");
		}
	}

	/**
	 * 添加商品处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("updateProducts")
	@ResponseBody
	public void updateProducts(HttpServletRequest request,
			HttpServletResponse response) {
		Product product = new Product();
		YXObject.setValue(product, request);
		product.setState(1);
		product.setSysState(1);
		if (product != null && product.getId() > 0) {
			Response res = new Response();
			res = service.updateByPrimaryKeySelective(product);
			if (res.getStatusCode() == StatusCode.SUCCESS) {
				System.out.println("*************************修改商品成功");
				this.outJson("success", "修改商品成功");
			} else {
				this.outJson("fail", "修改商品失败");
			}
		} else {
			this.outJson("fail", "添加商品失败");
		}
	}

	/**
	 * 添加商品处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("deleteProducts")
	@ResponseBody
	public void deleteProducts(HttpServletRequest request,
			HttpServletResponse response) {
		Product product = new Product();
		YXObject.setValue(product, request);
		if (product != null && product.getId() > 0) {
			Response res = new Response();
			res = service.deleteByPrimaryKey(product.getId());
			if (res.getStatusCode() == StatusCode.SUCCESS) {
				System.out.println("*************************删除商品成功");
				this.outJson("success", "删除商品成功");
			} else {
				this.outJson("fail", "删除商品失败");
			}
		} else {
			this.outJson("fail", "删除商品失败");
		}
	}
	
	
	/**
	 * 申请试用处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("applyUseProducts")
	@ResponseBody
	public void applyUseProducts(HttpServletRequest request,
			HttpServletResponse response) {
		Product product = new Product();
		YXObject.setValue(product, request);
		Response res = new Response();
		res = service.selectList(product);
		if (res.getStatusCode() == StatusCode.SUCCESS) {
			List<Product> list = (List<Product>) res.getList();
			int allsize = res.getAllSize();
			System.out
					.println("**********************************************查询成功"+allsize);
			if (list != null) {
				this.outJson(list, allsize, "查询成功");

			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}

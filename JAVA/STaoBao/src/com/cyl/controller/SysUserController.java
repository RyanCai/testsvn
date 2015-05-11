package com.cyl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cyl.IService.ISysUserService;
import com.cyl.Service.SysUserService;
import com.cyl.bean.pojo.SysUser;
import com.cyl.frame.log.LogHelper;
import com.cyl.frame.util.DESEncrypt;
import com.cyl.frame.util.YXObject;

/**
 * 
 * @category：用户处理器
 * @author RyanCai
 * @日期：2015年4月23日 下午12:46:11
 */

@Controller
public class SysUserController {

	private ISysUserService service = null;

	public SysUserController() {
		service = new SysUserService();
	}

	/**
	 * 添加用户处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("sysUserAdd")
	public ModelAndView sysUserAdd(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String path = "viewpage/publicpage/error";
		String str = "Hello Caiyunlong!";
		SysUser user = new SysUser();
		YXObject.setValue(user, request);
		if (user != null && user.getUsername() != null
				&& user.getLoginpassword() != null && user.getUsertype() > 0) {
			System.out.println(user.getUsername() + "/" + user.getUsertype()
					+ "/" + user.getLoginpassword());
			user.setLoginpassword(DESEncrypt.getInstance().encode(
					user.getLoginpassword()));
			user.setState(1);
			user.setSysState(1);
			int row = service.insert(user);
			if (row > 0) {
				System.out.println("注册成功");
				request.getSession().setAttribute("sysUser", user);
				switch (user.getUsertype()) {
				case 1:
					path = "viewpage/customer/customerIndex";
					break;
				case 2:
					path = "viewpage/seller/sellerIndex";
					break;
				case 3:
					path = "viewpage/manager/managerIndex";
					break;
				default:
					break;
				}

			}
		}
		return new ModelAndView(path, "message", str);
	}

	/**
	 * 用户登录处理方法
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("sysUserLogin")
	public ModelAndView sysUserLogin(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String path = "viewpage/publicpage/error";
		String str = "Hello Caiyunlong!";
		SysUser user = new SysUser();
		YXObject.setValue(user, request);
		if (user != null && user.getUsername() != null
				&& user.getLoginpassword() != null && user.getUsertype() > 0) {
			System.out.println(user.getUsername() + "/" + user.getUsertype()
					+ "/" + user.getLoginpassword());
			user.setLoginpassword(DESEncrypt.getInstance().encode(
					user.getLoginpassword()));
			user.setState(1);
			user.setSysState(1);
			System.out.println("*************" + user.getUsername() + "/"
					+ user.getUsertype() + "/" + user.getLoginpassword());
			List<SysUser> list = service.selectList(user);
//			System.out.println(row);
			if (list!=null&&list.size() == 1) {
				System.out.println("登录成功");
				request.getSession().setAttribute("sysUser", list.get(0));
				switch (user.getUsertype()) {
				case 1:
					path = "viewpage/customer/customerIndex";
					break;
				case 2:
					path = "viewpage/seller/sellerIndex";
					break;
				case 3:
					path = "viewpage/manager/managerIndex";
					break;
				default:
					break;
				}
			}
		} else {
			LogHelper.RcsLog().info(
					"com.cyl.controller.SysUserController#sysUserLogin:参数不全");
		}
		return new ModelAndView(path, "message", str);
	}

	/**
	 * 用户推出系统
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("sysUserLoginOut")
	public ModelAndView sysUserLoginOut(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LogHelper.RcsLog().info(
				"com.cyl.controller.SysUserController#sysUserLoginOut");
		String path = "viewpage/publicpage/error";
		String str = "Hello Caiyunlong!";
		HttpSession session = request.getSession();
		SysUser user = new SysUser();
		YXObject.setValue(user, request);
		// if (user != null ) {
		// System.out.println(user.getUsername()+"/"+user.getUsertype()+"/"+user.getLoginpassword());
		// System.out.println(user.getUsername() + "/" + user.getUsertype());
		// user.setState(1);
		// user.setSysState(1);
		SysUser user2 = (SysUser) session.getAttribute("sysUser");
		if (user2 != null) {
			session.removeAttribute("sysUser");
			path = "index";
		} else {
			LogHelper
					.RcsLog()
					.info("com.cyl.controller.SysUserController#sysUserLoginOut:sysUser为空");
		}
		// } else {
		// LogHelper
		// .RcsLog()
		// .info("com.cyl.controller.SysUserController#sysUserLoginOut:参数不全退出");
		// }
		return new ModelAndView(path, "message", str);
	}
	
	
	@RequestMapping("sysUserUpdate")
	@ResponseBody
	public String sysUserUpdate(HttpServletRequest request,
			HttpServletResponse response) {
		String msg = "修改失败";
		SysUser user = new SysUser();
		YXObject.setValue(user, request);
		if (user != null && user.getId()>0 && user.getUsertype() > 0) {
//			System.out.println(user.getUsername() + "/" + user.getUsertype()
//					+ "/" + user.getLoginpassword());
//			user.setLoginpassword(DESEncrypt.getInstance().encode(
//					user.getLoginpassword()));
//			user.setState(1);
//			user.setSysState(1);
			int row = service.updateByPrimaryKeySelective(user);
			if (row > 0) {
				System.out.println("修改成功");
				msg = "修改成功";
//				request.getSession().setAttribute("sysUser", user);

			}
		}
		return msg;
	}

}

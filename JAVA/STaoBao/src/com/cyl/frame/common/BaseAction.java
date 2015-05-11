package com.cyl.frame.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.cyl.frame.util.DateJsonValueProcessor;

@Controller
public class BaseAction {

	private static final long serialVersionUID = 1L;
	// private static ILogger logger =
	// LogFactory.getDefaultLogger(BaseAction.class);

	/**
	 * ServletOutputStream
	 */
	protected ServletOutputStream out;

	/**
	 * HttpServletRequest
	 * 
	 * @Autowired
	 */

	protected HttpServletRequest request;

	/**
	 * HttpServletResponse
	 */
	protected HttpServletResponse response;

	/**
	 * HttpSession
	 */
	protected HttpSession session;

	/**
	 * 当前登录用户信息
	 */
	// protected UserInfo user = null;

	/**
	 * 操作类型<br>
	 * add：增，edit：改，delete：删，export：导出，audit：审核....<br>
	 * 建议使用常量类属性：GlobalConstants.GENRE_类型
	 */
	public String genre = null;

	public int pageNo = 1; // 当前页码
	public int pageSize = 10; // 总记录数
	public int totalRows = 0; // 总记录数
	/**
	 * 功能点ID
	 */
	public int functionId = -5;

	@ModelAttribute
	public void setReqAndRes(HttpServletRequest request,
			HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.session = request.getSession();
	}

	public BaseAction() {
		// initParameter();
		// getUserInfo();
	}

	/**
	 * 将数据封装为JSON格式输出到前端
	 * 
	 * @param genre
	 *            操作类型
	 * @param flag
	 *            标识/key
	 */
	public void outJson(String flag) {
		Map<String, String> map = new HashMap<String, String>();
		// map.put(GlobalConstants.GENRE, genre);
		map.put("flag", flag);
		JSONObject json = JSONObject.fromObject(map);
		outString(json.toString());
		map.clear();
		map = null;
	}

	
	/**
	 * 
	 * @category：TODO
	 *@author RyanCai
	 *@Time :2015年5月6日 下午2:01:00
	 * @param list
	 * @param allSize
	 * @param flag
	 */
	public void outJson(List<?> list, int allSize, String flag) {
		if (list != null && allSize > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("total", allSize);
			map.put("rows", list);
			JsonConfig jf = new JsonConfig();  
			jf.registerJsonValueProcessor(java.sql.Timestamp.class, new DateJsonValueProcessor("yyyy-MM-dd HH:mm:ss"));  
			jf.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));  
			JSONObject json2 = JSONObject.fromObject(map,jf);
			System.out.println(json2.toString());
			outString(json2.toString());
			map.clear();
			map = null;
			
			
		}
	}

	public void outJson2(String msg, String flag) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("msg", msg);
		map.put("flag", flag);
		JSONObject json = JSONObject.fromObject(map);
		outString(json.toString());
		map.clear();
		map = null;
	}

	/**
	 * 将数据封装为JSON格式输出到前端
	 * 
	 * @param genre
	 *            操作类型
	 * @param flag
	 *            标识/key
	 * @param msg
	 *            消息
	 */
	public void outJson(String flag, String msg) {
		Map<String, String> map = new HashMap<String, String>();
		// map.put(GlobalConstants.GENRE, genre);
		map.put("flag", flag);
		map.put("msg", msg);
		JSONObject json = JSONObject.fromObject(map);
		outString(json.toString());
		map.clear();
		map = null;
	}

	public void outJson(Object obj, String genre) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(obj.getClass().getSimpleName(), obj);
		map.put("genre", genre);
		JSONObject json = JSONObject.fromObject(map);
		outString(json.toString());
		map.clear();
		map = null;
	}

	public void outJson(Object obj, String genre, String flag) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("obj", obj);
		map.put("genre", genre);
		map.put("flag", flag);
		JSONObject json = JSONObject.fromObject(map);
		outString(json.toString());
		map.clear();
		map = null;
	}

	/**
	 * 输出字符串到客户端
	 * 
	 * @param str
	 */
	public void outString(String str) {
		try {
			str = str == null ? "" : str;
			response.setCharacterEncoding("UTF-8");
			out = response.getOutputStream();
			out.write(str.getBytes("utf-8"));
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				out.flush();
				out.close();
				out = null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public void outString(String str, String characterEncoding) {
		try {
			str = str == null ? "" : str;
			response.setCharacterEncoding(characterEncoding);
			out = response.getOutputStream();
			out.write(str.getBytes(characterEncoding));
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				out.flush();
				out.close();
				out = null;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}

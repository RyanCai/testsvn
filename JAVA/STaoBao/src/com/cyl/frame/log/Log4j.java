package com.cyl.frame.log;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.xml.DOMConfigurator;

public class Log4j  implements ServletContextListener{
	
	public static final String CONFIG_LOCATION_PARAM = "log4jConfigLocation";    
    public static final String XML_FILE_EXTENSION = ".xml"; 
    
//	static {
//		try {
////			Class cls = Class.forName("com.cyl.frame.log.Log4j");
////			ClassLoader loader = cls.getClassLoader();
////			// 获得类的全名，包括包名
////			String clsName = cls.getName().replaceAll("\\.", "/") + ".class";
////
////			// 调用ClassLoader的getResource方法，传入包含路径信息的类文件名
////			java.net.URL url = loader.getResource(clsName);
////			// 从URL对象中获取路径信息
////			String realPath = url.getPath();
////			if (realPath.indexOf("lib") != -1) {
////				realPath = realPath.substring(0, realPath.indexOf("lib")) + "classes" + "/" + "log4j.xml";
////			} else {
////				realPath = realPath.substring(0, realPath.indexOf("classes") + 8) + "log4j.xml";
////			}
////
////			DOMConfigurator.configure(realPath);
//			
//			DOMConfigurator.configure("log4j.xml");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//	}

	public static Logger getLoggerByName(String name) {
		Logger logger = Logger.getLogger(name);// 得到xxx
		return logger;
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		 LogManager.shutdown(); 
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
	       String location = event.getServletContext().getInitParameter(CONFIG_LOCATION_PARAM);      
	       if (location != null) {      
	            if (!location.startsWith("/")) {      
	                location = "/" + location;      
	            }    
	            location = event.getServletContext().getRealPath(location);  
	            //如果是xml结尾就用DOM解析，否则就用properties解析      
	            if (location.toLowerCase().endsWith(XML_FILE_EXTENSION)) {    
	            	System.out.println(location);
	                DOMConfigurator.configure(location);      
	            }else {      
	                PropertyConfigurator.configure(location);      
	            }        
	        }
	       
		
	}

}

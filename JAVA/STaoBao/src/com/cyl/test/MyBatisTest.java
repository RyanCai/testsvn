package com.cyl.test;

import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisTest {

	/**
	 * @param args
	 * SqlMapper sqlmapper=
	 */
	public static void testMyBatis(){
		 SqlSession session = null;
		try {
//			Reader reader=Resources.getResourceAsReader("com/cyl/xml/configuration.xml");
//			 SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);  
//             session = ssf.openSession();   
//             Student s = (Student) session.selectOne("selectStudentById", "1");  
//            	    System.out.println(s);  
			URL url=Resources.getResourceURL("Configuration.xml");
			System.out.println(url.getPath());
                    } catch (Exception e) {  
            		            e.printStackTrace();  
            	        } finally {  
//            		            session.close();  
            		        }  

	}
	public static void main(String[] args) {
		testMyBatis();
//		StudentDAO sdao=new StudentDAO();
//		Student stu=new Student();
//		stu.setSid(1);
//		stu.setSname("Cai");
//		Date d=new Date();
//		stu.setBirth(d);
//		stu.setMajor("���");
//		sdao.addStudent(stu);
//
	}

}

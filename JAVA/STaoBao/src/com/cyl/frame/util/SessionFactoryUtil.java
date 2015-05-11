package com.cyl.frame.util;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

public class SessionFactoryUtil {
	
	private static String RESOURCE = "Configuration.xml"; // ORM 初始化文件
	private static SqlSessionFactory sqlSessionFactory = null;
	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
	private static Logger log = Logger.getLogger(SessionFactoryUtil.class);

	/**
	 * 
	 * 构建 SqlSessionFactory
	 * 
	 * @author caosai
	 * @param path
	 * @param pop
	 *            系统初始化属性
	 * @throws SQLException
	 */
	public static void builderFactory(Properties pop) throws SQLException {
		Reader reader = null;

		try {
			reader = Resources.getResourceAsReader(RESOURCE);
		} catch (IOException e) {
			throw new RuntimeException("Get resource error:" + RESOURCE, e);
		}
		if (pop == null)
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		else
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader,
					pop);

		log.debug("--------init db  success----------");
		log.debug("--------RESOURCE: " + RESOURCE);
		log.debug("--------sqlSessionFactory: "
				+ sqlSessionFactory.openSession().getConnection().isClosed());

	}
	

	/**
	 * 
	 * 重构sessionFactory
	 * 
	 * @author caosai
	 * @param
	 * @param
	 */
	public static void rebuildSqlSessionFactory() {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(RESOURCE);
		} catch (IOException e) {
			throw new RuntimeException("Get resource error:" + RESOURCE, e);
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
	}

	/**
	 * 
	 * 获取当前线程内session
	 * 
	 * @author caosai
	 * @param
	 * @param
	 */

	public static SqlSession getSqlSession() {
		SqlSession session = threadLocal.get();
		log.debug("create sqlSessionFactory = " + sqlSessionFactory);
		if (session == null) {
			if (sqlSessionFactory == null) {
				try {
					builderFactory(null);
					sqlSessionFactory = getSqlSessionFactory();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			// ���sqlSessionFactory��Ϊ�����ȡsqlSession�����򷵻�null
			session = (sqlSessionFactory != null) ? sqlSessionFactory
					.openSession() : null;
		}
		log.debug("create session = " + session);
		threadLocal.set(session);
		return session;
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public static void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		SessionFactoryUtil.sqlSessionFactory = sqlSessionFactory;
	}

	/**
	 * 
	 * 关闭当前线程内Session
	 * 
	 * @author caosai
	 * @param
	 * @param
	 */

	public static void closeCurrentSession() {
		SqlSession session = threadLocal.get();
		threadLocal.set(null);
		if (session != null) {
			session.close();
		}
	}

}

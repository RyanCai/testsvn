package com.cyl.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cyl.Idao.ICommonDAO;
import com.cyl.frame.util.SessionFactoryUtil;

public class CommonDAO<T> implements ICommonDAO<T> {
	
	private String mapperName=null;
	
	public String getMapperName() {
		return mapperName;
	}

	public void setMapperName(String mapperName) {
		this.mapperName = mapperName;
	}

	public CommonDAO(String mappername){
		this.setMapperName(mappername);
	}

	/**
	 * 获得sqlsession
	 * 
	 * @return
	 */
	public SqlSession getSession() {
		return SessionFactoryUtil.getSqlSession();
	}

	/**
	 * 关闭session
	 */
	public void closeSession() {
		SessionFactoryUtil.closeCurrentSession();
	}

	@Override
	public int deleteByPrimaryKey(String key) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = session.delete("com.cyl.Idao."+this.getMapperName()+".deleteByPrimaryKey",
					key);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
		return i;
	}

	@Override
	public int insert(T record) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			System.out.println(this.getMapperName());
			String queryid="com.cyl.Idao."+this.getMapperName()+".insert";
			System.out.println(queryid);
			i = session.insert(queryid, record);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public int insertSelective(T record) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = session.insert("com.cyl.Idao."+this.getMapperName()+".insertSelective",
					record);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public T selectByPrimaryKey(String key) {
		T i = null;
		SqlSession session = null;
		try {
			session = getSession();
			i = (T) session.selectOne(
					"com.cyl.Idao."+this.getMapperName()+".selectByPrimaryKey", key);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public int updateByPrimaryKeySelective(T record) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = session.update(
					"com.cyl.Idao."+this.getMapperName()+".updateByPrimaryKeySelective",
					record);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public int updateByPrimaryKey(T record) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = session.update("com.cyl.Idao."+this.getMapperName()+".updateByPrimaryKey",
					record);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public int selectCount(T record) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = (int) session.selectOne(
					"com.cyl.Idao."+this.getMapperName()+".selectCount", record);
			System.out.println("i-------------------------------"+i);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// session.commit();
			// session.commit();
			this.closeSession();
		}
		return i;
	}

	@Override
	public List<T> selectList(T record) {
		List<T> list = new ArrayList<T>();
		SqlSession session = null;
		try {
			session = getSession();
			list = session.selectList("com.cyl.Idao."+this.getMapperName()+".selectList",
					record);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// session.commit();
			// session.commit();
			this.closeSession();
		}
		return list;
	}

	@Override
	public int deleteByPrimaryKey(int key) {
		int i = 0;
		SqlSession session = null;
		try {
			session = getSession();
			i = session.delete("com.cyl.Idao."+this.getMapperName()+".deleteByPrimaryKey",
					key);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
			session.close();
		}
		return i;
	}

}

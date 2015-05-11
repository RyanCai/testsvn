package com.cyl.Idao;

import java.util.List;

/**
 * 
 * @author Administrator
 *
 * @param <T>
 */
public interface ICommonDAO<T> {

	public int deleteByPrimaryKey(String key);
	
	public int deleteByPrimaryKey(int key);

	public int insert(T record);

	public int insertSelective(T record);

	public T selectByPrimaryKey(String key);

	public int updateByPrimaryKeySelective(T record);

	public int updateByPrimaryKey(T record);
	
	public int selectCount(T record);
	
	public List<T> selectList(T record);
	

}

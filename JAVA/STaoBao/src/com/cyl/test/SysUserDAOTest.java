package com.cyl.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cyl.bean.pojo.SysUser;
import com.cyl.dao.SysUserDAO;

public class SysUserDAOTest {

	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsert() {
		SysUserDAO userdao=new SysUserDAO();
		SysUser record=new SysUser();
		record.setUsername("cai");
		record.setLoginpassword("123456");
		record.setGetcashpassword("123456");
		record.setUsertype(1);
		record.setIsvip(1);
		record.setVipid(1);
		record.setSex(1);
		record.setState(1);
		record.setSysState(1);
		userdao.insert(record);
	}

//	@Test
//	public void testInsertSelective() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectByPrimaryKey() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testUpdateByPrimaryKeySelective() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testUpdateByPrimaryKey() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectCount() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectList() {
//		fail("Not yet implemented");
//	}

}

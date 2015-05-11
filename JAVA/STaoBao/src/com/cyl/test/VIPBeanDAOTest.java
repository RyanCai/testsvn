package com.cyl.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.cyl.bean.pojo.VIPBean;
import com.cyl.dao.VIPBeanDAO;

public class VIPBeanDAOTest {

	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsert() {
		VIPBeanDAO vipdao=new VIPBeanDAO();
		VIPBean vip=new VIPBean();
		vip.setVipname("测试2");
		vip.setIsfee(0);
		vip.setFeetype(0);
		vip.setViptype(1);
		vip.setCharge(20.00);
		vipdao.insert(vip);
		
	}

	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectCount() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectList() {
		fail("Not yet implemented");
	}

}

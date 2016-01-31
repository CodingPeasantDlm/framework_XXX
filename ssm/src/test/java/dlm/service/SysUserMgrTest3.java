package dlm.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import dlm.model.SysUser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class SysUserMgrTest3 {
	
	@Autowired
	private SysUserMgr sysUserMgr;
	
	@Test
	public void getUserById(){
		SysUser u=sysUserMgr.getUserById(1);
		System.out.println(u);
	}
	
	@Test
	public void getAll() {
		List <SysUser> userList=sysUserMgr.getAll();
		System.out.println("---***---"+JSON.toJSONStringWithDateFormat(userList, "yyyy-MM-dd HH:mm:ss"));
	}

	@Test
	public void  getAll2() {
		List <SysUser> userList=sysUserMgr.getAll2();
		System.out.println("---***--"+JSON.toJSONStringWithDateFormat(userList, "yyyy-MM-dd HH:mm:ss"));
	}

}

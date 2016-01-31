package dlm.service;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dlm.model.SysUser;

public class SysUserMgrTest2 {
	
	private  ApplicationContext ac;
	private  SysUserMgr sysUserMgr;
	
	@Before
	public void before(){
		ac =new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
		sysUserMgr=(SysUserMgr) ac.getBean("sysUserMgr");
	}
	
	@Test
	public void getUserById(){
		SysUser u=sysUserMgr.getUserById(1);
		System.out.println(u);
	}
}

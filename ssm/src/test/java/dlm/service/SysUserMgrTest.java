package dlm.service;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dlm.model.SysUser;

public class SysUserMgrTest {
	
	@Test
	public void getUserById(){
		ApplicationContext ac =new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
		SysUserMgr sysUserMgr=(SysUserMgr) ac.getBean("sysUserMgr");
		SysUser u=sysUserMgr.getUserById(1);
		System.out.println(u);
	}
}

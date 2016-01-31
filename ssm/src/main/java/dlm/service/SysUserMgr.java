package dlm.service;

import java.util.List;

import dlm.model.SysUser;

public interface SysUserMgr {
	String SERVICE_NAME = "sysUserMgr";
	
	SysUser getUserById(Integer id);
	
    List<SysUser>getAll();
    
    List<SysUser>getAll2();
}

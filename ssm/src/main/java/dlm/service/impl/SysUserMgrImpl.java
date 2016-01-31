package dlm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dlm.dao.SysUserMapper;
import dlm.model.SysUser;
import dlm.service.SysUserMgr;

@Service(SysUserMgr.SERVICE_NAME)
public class SysUserMgrImpl implements SysUserMgr {

	@Autowired
	private SysUserMapper sysUserMapper;

	@Override
	public SysUser getUserById(Integer id) {
		return sysUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SysUser> getAll() {
		return sysUserMapper.getAll();
	}

	@Override
	public List<SysUser> getAll2() {
		return sysUserMapper.getAll2();
	}

}

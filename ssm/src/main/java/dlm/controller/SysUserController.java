package dlm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dlm.model.SysUser;
import dlm.service.SysUserMgr;

@Controller
@RequestMapping("/sysUserController")
public class SysUserController {
	
	@Autowired
	private SysUserMgr sysUserMgr;
	
	@RequestMapping("/showUser")
	public String showUser(Integer id,Model model){
		SysUser u=sysUserMgr.getUserById(id);
		model.addAttribute("sysUser", u);
		return "showUser";
	}
}

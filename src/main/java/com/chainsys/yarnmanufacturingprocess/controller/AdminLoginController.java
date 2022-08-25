package com.chainsys.yarnmanufacturingprocess.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.yarnmanufacturingprocess.model.AdminLogin;
import com.chainsys.yarnmanufacturingprocess.service.AdminLoginService;

@Controller
@RequestMapping("/adminlogin")
public class AdminLoginController {
	@Autowired
	AdminLoginService adminLoginService;
	@GetMapping("/addform")
	public String addForm(Model model) {
		AdminLogin theAdminLogin = new AdminLogin();
		model.addAttribute("addadminlogin", theAdminLogin);
		return "add-admin-login-form";
	}

	@PostMapping("/add")
	public String addNewAdmin(@ModelAttribute("addadminlogin") AdminLogin theAdminLogin) {
		adminLoginService.save(theAdminLogin);
		
		return "redirect:/adminlogin/yarnindex";
	}
	
	@GetMapping("/loginadmin")
	public String loginForm(Model model) {
		AdminLogin login = new AdminLogin ();
		model.addAttribute("log",login);
		return "adminlogin";
	}
	@GetMapping("/yarnindex")
	public String yarnIndex() {
		
		return "yarn";
	}
	@PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("log") AdminLogin adminLogin,Model model) {
		AdminLogin log = adminLoginService.getEmailIdUserPassword(adminLogin.getEmailId(), adminLogin.getUserPassword());
        if (log!= null){

        	return "redirect:/adminlogin/yarnindex";
        } else {
        
            return "redirect:/adminlogin/loginadmin";
        }
    }
	
	
	
}

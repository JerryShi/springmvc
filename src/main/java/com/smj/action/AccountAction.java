package com.smj.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smj.entity.Account;
import com.smj.entity.User;
import com.smj.service.AccountService;
import com.smj.service.UserService;

@Controller
@RequestMapping("account")
public class AccountAction {
	
	@Resource
	private UserService userService;
	
	@Resource
	private AccountService accountService;
	
	@RequestMapping("/registAccountView")
	public ModelAndView registAccountView(){
		Map<String, Object> model = new HashMap<>();
		Map<String, Object> filters = new HashMap<>();
		filters.put("removeFlag_equal", "1");
		List<User> users = userService.findBy(filters);
		model.put("users", users);
		model.put("account", new Account());
		return new ModelAndView("registAccount", model);
	}
	
	@RequestMapping("registAccount")
	public ModelAndView registAccount(@ModelAttribute Account account){
		Map<String, Object> model = new HashMap<>();
		Map<String, Object> filters = new HashMap<>();
		filters.put("removeFlag_equal", "1");
		List<Account> accounts = accountService.findBy(filters);
		account.setEnabled("1");
		account.setRemoveFlag("1");
		account = accountService.save(account);
		accounts.add(0,account);
		model.put("account", account);
		model.put("accountList", accounts);
		return new ModelAndView("registAccountSuccess", model);
	}
	
	@RequestMapping("listAccountsView")
	public ModelAndView listAccounts(){
		Map<String, Object> model = new HashMap<>();
		Map<String, Object> filters = new HashMap<>();
		filters.put("removeFlag_equal", "1");
		List<Account> accounts = accountService.findBy(filters);
		model.put("accountList", accounts);
		return new ModelAndView("listAccountsView",model);
	}

}

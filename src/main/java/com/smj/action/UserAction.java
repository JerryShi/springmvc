package com.smj.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smj.entity.User;
import com.smj.service.UserService;

@Controller
@RequestMapping("user")
public class UserAction {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/registUserView")
	public ModelAndView registUserView(){
		return new ModelAndView("registUser", "user", new User());
	}
	
	@RequestMapping(value = "/registUser")
	public ModelAndView registUser(@ModelAttribute("user") User user){
		Map<String,Object> model = new HashMap<>();
		user.setRemoveFlag("1");
		Map<String, Object> filters = new HashMap<>();
		filters.put("removeFlag_equal", "1");
		List<User> userList = userService.findBy(filters);
		System.out.println(user.getName());
		user = userService.save(user);
		userList.add(0, user);
		model.put("userList", userList);
		model.put("user", user);
		return new ModelAndView("registUserSuccess", model);

	}
	
	@RequestMapping(value = "/listUsersView")
	public ModelAndView listUsers(){
		Map<String,Object> model = new HashMap<>();
		Map<String, Object> filters = new HashMap<>();
		filters.put("removeFlag_equal", "1");
		List<User> userList = userService.findBy(filters);
		model.put("userList", userList);
		return new ModelAndView("listUsersView", model);

	}

}

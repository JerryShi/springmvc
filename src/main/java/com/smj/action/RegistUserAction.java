package com.smj.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smj.entity.User;

@Controller
public class RegistUserAction {
	
	@RequestMapping("/registView")
	public ModelAndView test(){
		
		return new ModelAndView("jsp/regist", "user", new User());
	}
	
	@RequestMapping(value = "/regist")
	public ModelAndView regist(@ModelAttribute("user") User user){
		Map<String,Object> model = new HashMap<>();
		List<User> userList = new ArrayList<>();
		User u = new User();
		u.setName("szw");
		u.setAge(24);
		userList.add(u);
		userList.add(user);
		model.put("userList", userList);
		model.put("user", user);
		return new ModelAndView("jsp/success", model);

	}

}

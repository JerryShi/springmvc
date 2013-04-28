package com.smj.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.smj.dao.GenericDao;
import com.smj.dao.UserDao;
import com.smj.entity.User;

@Service
public class UserService extends AbstractCrudService<User, String> implements CrudServiceInterface<User, String>{

	@Resource
	private UserDao userDao;
	
	@Override
	protected GenericDao<User, String> getDao() {
		return userDao;
	}

}

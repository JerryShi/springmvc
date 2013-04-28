package com.smj.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.smj.dao.AccountDao;
import com.smj.dao.GenericDao;
import com.smj.entity.Account;

@Service
public class AccountService extends AbstractCrudService<Account, Long> implements CrudServiceInterface<Account, Long>{

	@Resource
	private AccountDao accountDao;
	
	@Override
	protected GenericDao<Account, Long> getDao() {
		return accountDao;
	}

}

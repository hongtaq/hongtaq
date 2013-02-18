/**
 * 
 */
package cn.leadcloud.core.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.AccountMapper;
import cn.leadcloud.core.mapper.OrderMapper;
import cn.leadcloud.core.model.Account;
import cn.leadcloud.core.model.Order;
import cn.leadcloud.core.model.User;

/**
 * @author sunphy
 * 2013-1-1 下午8:28:15
 */
@Service
public class AccountService extends BaseService<Account, AccountMapper> {

	@Autowired
	private AccountMapper mapper;
	
	@Override
	public AccountMapper getMapper() {
		return mapper;
	}

	
	


	
}

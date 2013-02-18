package cn.leadcloud.core.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.model.User;
import cn.leadcloud.core.service.UserService;

/**
 * @author sunphy
 * created on 2010-9-15 上午09:59:56
 */
@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserService userService;
	
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException, DataAccessException {

		User user = userService.get(username);
		Collection<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
		List<Role> roles = userService.getRoles(user);
		for(Role role : roles){
			GrantedAuthority auth = new SimpleGrantedAuthority(role.getRoleId());
			auths.add(auth);
		}
		UserDetails userDetails = new org.springframework.security.core.userdetails.User(username,user.getPassword(),true,true,true,true,auths);
		return userDetails;
	}

}

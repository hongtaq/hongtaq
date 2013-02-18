/**
 * 
 */
package cn.leadcloud.core.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.leadcloud.core.BaseService;

import cn.leadcloud.core.mapper.UserMapper;
import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.model.User;

/**
 * @author sunphy
 * 2012-12-29 下午9:12:57
 */
@Service
public class UserService extends BaseService<User,UserMapper> {
	
	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private Md5PasswordEncoder passwordEncoder;
	
	@Transactional
	public List<Role> getRoles(User user){
		return getMapper().getRoles(user);
	}

	@Override
	public UserMapper getMapper() {
		return mapper;
	}

	public int getCountByEmail(String email) {
		// TODO Auto-generated method stub
		return getMapper().getCountByEmail(email);
	}
     
	
	public List<User> listPageUser(User user) {
		
		return getMapper().listPageUser(user);
	  }

	public void updatelogin(User user) {
		
		 getMapper().updatelogin(user);
		
	}

	public boolean insertUser(User user) {
		
		 getMapper().insertUser( user);
		 return true;
	}

	public void updateUserRights(User user) {
		
		 getMapper().updateUserRights(user);
		
	}



	public User getUserByNameAndPwd(String username, String password) {
	
		User user = new User();
		user.setUsername(username);
		user.setPassword(passwordEncoder.encodePassword(password, null));
		return  getMapper().getUserByNameAndPwd(user);
	}

	/**
	 * 
	 * @param hong
	 *下午3:35:45
	 */
	
    @Transactional
	public Boolean insertuserAndRole(User user) {
    	try {
    		getMapper().insert(user);
        	getMapper().insertusersRole(user);
        	return true;
		} catch (Exception e) {
			
			return false;
		}

	}

	public User getUserByNameAndPwd(User user) {
		// TODO Auto-generated method stub
		return getMapper().getUserByNameAndPwd(user);
	}



	

}

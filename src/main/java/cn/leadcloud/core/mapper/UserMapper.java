/**
 * 
 */
package cn.leadcloud.core.mapper;

import java.util.List;

import cn.leadcloud.core.MapperInterface;

import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.model.User;

/**
 * @author sunphy
 * 2012-12-29 下午8:18:16
 */
public interface UserMapper extends MapperInterface<User> {

	List<Role> getRoles(User user);
   
	/***根据邮箱查找用户是否存在*/
	int getCountByEmail(String email);

	/**
	 * 获取分页用户
	 * @param user
	 * @return
	 *下午2:11:02
	 */
	List<User> listPageUser(User user);
       /**更新用户登录时间***/
    void updatelogin(User user);

	void insertUser(User user);

	void updateUserRights(User user);


	User getUserByNameAndPwd(String loginname, String password);

	User getUserByNameAndPwd(User user);



	void insertusersRole(User user);
}

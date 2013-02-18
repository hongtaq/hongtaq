/**
 * 
 */
package cn.leadcloud.core.mapper;

import java.util.List;

import cn.leadcloud.core.MapperInterface;
import cn.leadcloud.core.model.Role;


/**
 * @author sunphy
 * 2012-12-29 下午8:18:53
 */
public interface RoleMapper extends MapperInterface<Role>{
	
	
	public List<Role> listAllRoles();

	public void deleteRoleById(int roleId);

	public Role getRoleById(String roleId);

	public int getCountByName(Role role);

	public void insertRole(Role role);

	public void updateRoleBaseInfo(Role role);

	public void updateRoleRights(Role role);

}

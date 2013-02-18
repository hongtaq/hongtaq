package cn.leadcloud.core.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;

import cn.leadcloud.core.mapper.RoleMapper;
import cn.leadcloud.core.mapper.UserMapper;

import cn.leadcloud.core.model.Role;
import cn.leadcloud.core.model.User;


@Service
public class RoleService extends BaseService<Role, RoleMapper>{

	@Autowired
	private RoleMapper mapper;
	
	public List<Role> listAllRoles() {
		// TODO Auto-generated method stub
		return mapper.listAllRoles();
	}

	public void deleteRoleById(int roleId) {
		// TODO Auto-generated method stub
		mapper.deleteRoleById(roleId);
	}

	public Role getRoleById(String roleId) {
		// TODO Auto-generated method stub
		return mapper.getRoleById(roleId);
	}

	public boolean insertRole(Role role) {
		// TODO Auto-generated method stub
		if(mapper.getCountByName(role)>0)
			return false;
		else{
			mapper.insertRole(role);
			return true;
		}
	}

	public boolean updateRoleBaseInfo(Role role) {
		// TODO Auto-generated method stub
		if(mapper.getCountByName(role)>0)
			return false;
		else{
			mapper.updateRoleBaseInfo(role);
			return true;
		}
	}
	
	public void updateRoleRights(Role role) {
		// TODO Auto-generated method stub
		mapper.updateRoleRights(role);
	}


	
	
	@Override
	public RoleMapper getMapper() {
		return mapper;
	}

}

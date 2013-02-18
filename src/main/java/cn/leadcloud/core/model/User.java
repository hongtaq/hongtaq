/**
 * 
 */
package cn.leadcloud.core.model;


import java.util.Date;



import lombok.Data;

/**
 * @author sunphy
 * 2012-12-29 下午4:53:26
 */
@Data
public class User {

	private String username;
	
	private String password;
	
	private String email;
	
	private String nickname;
	
	private Date created;
	
	/**更新日期**/
	private Date modified;
	
	private Date lastLogin;
	
	/**用户真实姓名**/
	private String realname;	
	
	/**用户权限**/
	private String rights;
	
	private Role role;
	
	private String roleId;
	/**用户状态**/
	private Integer status;
	
    /**不需要在数据库表里面映射的字段**/
	private Date lastLoginStart;
	private Date lastLoginEnd;
	
	private Page page;
	
	/***新密码不需要映射到数据库**/
	private String newPassword;
	

  public Page getPage() {
		if(page==null)
			page = new Page();
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
}

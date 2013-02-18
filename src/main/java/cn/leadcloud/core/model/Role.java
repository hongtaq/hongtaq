/**
 * 
 */
package cn.leadcloud.core.model;

import lombok.Data;

/**
 * @author sunphy
 * 2012-12-29 下午5:09:16
 */
@Data
public class Role {

	private String roleId;
	
	private String name;

	private String rights;
	
	private String description;
}

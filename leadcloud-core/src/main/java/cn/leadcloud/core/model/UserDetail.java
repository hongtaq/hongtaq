/**
 * 
 */
package cn.leadcloud.core.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author sunphy
 * 2013-1-1 下午7:39:59
 */
@Data
@EqualsAndHashCode(callSuper=false)
public class UserDetail extends User {

	private long credit;
	
	private double account;
	
	private String address;
	
	private String orgnization;
	
}

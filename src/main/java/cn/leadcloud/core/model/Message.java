/**
 * 
 */
package cn.leadcloud.core.model;

import java.util.Date;

import lombok.Data;

/**
 * @author sunphy
 * 2013-1-1 下午7:59:28
 */
@Data
public class Message {

	private long id;
	
	private String subject;
	
	private String content;
	
	private User user;
	
	private Date received;
}

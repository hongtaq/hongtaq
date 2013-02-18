/**
 * 
 */
package cn.leadcloud.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.MessageMapper;
import cn.leadcloud.core.model.Message;

/**
 * @author sunphy
 * 2013-1-1 下午8:26:47
 */
@Service
public class MessageService extends BaseService<Message, MessageMapper> {

	@Autowired
	private MessageMapper mapper;
	
	@Override
	public MessageMapper getMapper() {
		return mapper;
	}

}

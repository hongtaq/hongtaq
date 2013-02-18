/**
 * 
 */
package cn.leadcloud.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.TradeMapper;
import cn.leadcloud.core.model.Trade;

/**
 * @author sunphy
 * 2013-1-1 下午8:29:46
 */
@Service
public class TradeService extends BaseService<Trade,TradeMapper>{

	@Autowired
	private TradeMapper mapper;

	@Override
	public TradeMapper getMapper() {
		return mapper;
	}
	
	
}

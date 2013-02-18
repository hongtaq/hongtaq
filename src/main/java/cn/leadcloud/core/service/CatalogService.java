/**
 * 
 */
package cn.leadcloud.core.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.CatalogMapper;
import cn.leadcloud.core.model.Catalog;

/**
 * @author sunphy
 * 2013-1-1 下午8:24:40
 */
@Service
public class CatalogService extends BaseService<Catalog, CatalogMapper> {

	@Autowired
	private CatalogMapper mapper;
	
	@Override
	public CatalogMapper getMapper() {
		return mapper;
	}

}

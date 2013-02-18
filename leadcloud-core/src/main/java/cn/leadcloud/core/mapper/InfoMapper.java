package cn.leadcloud.core.mapper;

import java.util.List;

import cn.leadcloud.core.MapperInterface;
import cn.leadcloud.core.model.Info;

import cn.leadcloud.core.model.Page;



public interface InfoMapper extends MapperInterface<Info>{
	List<Info> listPageInfo(Page page);
}

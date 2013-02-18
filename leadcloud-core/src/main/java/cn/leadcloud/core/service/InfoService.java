package cn.leadcloud.core.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.leadcloud.core.BaseService;
import cn.leadcloud.core.mapper.InfoMapper;

import cn.leadcloud.core.model.Info;

import cn.leadcloud.core.model.Page;

@Service
public class InfoService extends BaseService<Info, InfoMapper>{

	@Autowired
	private InfoMapper mapper;
	


	@Override
	public InfoMapper getMapper() {
	
		return mapper;
	}



	public List<Info> listPageInfo(Page page) {
		// TODO Auto-generated method stub
		return  getMapper().listPageInfo(page);
	}
}

package cn.leadcloud.core.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.leadcloud.core.model.Info;
import cn.leadcloud.core.model.Page;
import cn.leadcloud.core.service.InfoService;



@Controller
@RequestMapping(value="/info")
public class InfoController {
	
	@Autowired
	private InfoService infoService;
	
	@RequestMapping
	public String info(Model model,Page page){
		List<Info> infoList = infoService.listPageInfo(page);
		model.addAttribute("infoList", infoList);
		model.addAttribute("page", page);
		return "info";
	}
	
}

package com.project.cary;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;
import com.project.cary.domain.UserVO;
import com.project.cary.service.CSService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CSController {
	
	@Autowired
	CSService csService;
	
	@GetMapping("/cshome")
	public String csHome() {
		return "customer/csList";
	}
	
	
	
	
	
	
	
	
	
	

	/*@Autowired
	public CSService csService;
	
	@RequestMapping("/cshome")
	public String csHome(Model model,@ModelAttribute("pageInfo") PagingVO pageInfo, BindingResult bindingResult) {
		
		if(pageInfo.getCpage() == 0) {
			pageInfo.setCpage(1);
		}
		int totalCS = this.csService.getTotalCount();
		pageInfo.setTotalCount(totalCS);
		pageInfo.init();
		log.info(pageInfo);
		model.addAttribute("page",pageInfo);
		
		List<CsVO> csList = this.csService.csListwithPaging(pageInfo);
		log.info(csList);
		model.addAttribute("csList",csList);
		
		return "customer/csList";
	}
	
	@RequestMapping("/csdetail")
	public String csDetailshow(Model model, @RequestParam(defaultValue = "0") int idx) {
		if(idx == 0) {
			String msg ="잘못된 경로로부터의 접근입니다.";
			String loc = "javascript:history.back()";
			return "msg";
		}
		
		CsVO cs = this.csService.getcs(idx);
		model.addAttribute("cs",cs);
		return "customer/csDetail";
	}
	
	@RequestMapping("/user/cswrite")
	public String csWrite() {
		return "customer/csWrite";
	}
	
	@RequestMapping("/user/cswriteEnd")
	public String csWriteEnd(Model model,HttpSession session, @ModelAttribute("cs") CsVO cs) {
		log.info(cs);
		UserVO user=(UserVO)session.getAttribute("loginUser");
				
		cs.setMember_idx(user.getMember_idx());
		cs.setCs_writer(user.getMember_id());
		log.info("CSWEND:"+cs);
		int n = this.csService.insertCS(cs);
	
		String msg = n>0? "문의글이 등록되었습니다":"문의글 등록 실패";
		String loc = n>0? "../cshome":"javascript:history.back()";
		model.addAttribute("message",msg);
		model.addAttribute("loc",loc);
		return "msg";
	}*/
}

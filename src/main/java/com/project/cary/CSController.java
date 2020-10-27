package com.project.cary;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String csHome(Model model) {
		List<CsVO> csList = this.csService.selectCSList();
		log.info(csList);
		model.addAttribute("csList", csList);
		return "customer/csList";
	}
	
	@PostMapping("user/cswrite")
	public String csWrite() {
		return "customer/csWrite";
	}
		
	@PostMapping("user/cswriteEnd")
	public String csWriteEnd(Model model,@ModelAttribute("cs") CsVO cs, BindingResult bindingResult,
			HttpSession session) {
		log.info(cs);
		UserVO user = (UserVO)session.getAttribute("loginUser");
		cs.setMember_idx(user.getMember_idx());
		cs.setCs_writer(user.getMember_id());
		
		int check = this.csService.insertCS(cs);
	
		String msg = (check>0)? "고객 게시판에 해당 게시물이 등록되었습니다":"고객 게시판 게시물 등록 실패";
		String loc = (check>0)? "../cshome":"javascript:history.back()";
		
		model.addAttribute("message", msg);
		model.addAttribute("loc", loc);
		
		return "msg";
	}
	
	@GetMapping("/csdetail")
	public String csDetailshow(Model model, @RequestParam(defaultValue="0") int idx){
		if(idx == 0) {
			String msg ="잘못된 경로로부터의 접근입니다.";
			String loc = "javascript:history.back()";
			return "msg";
		}
		
		CsVO cs = this.csService.selectCSbyidx(idx);
		model.addAttribute("cs",cs);
		return "customer/csDetail";
	}

	@PostMapping("user/csdelete")
	public String csDelete(Model model,@RequestParam(defaultValue = "0") int cs_idx) {
		if(cs_idx == 0) {
			String msg ="잘못된 경로로부터의 접근입니다.";
			String loc = "javascript:history.back()";
			return "msg";
		}
		
		int number = this.csService.deleteCSbyidx(cs_idx);
		
		String msg = (number>0)? "해당 게시물이 삭제되었습니다":"게시물 삭제 실패";
		String loc = (number>0)? "../cshome":"javascript:history.back()";
		
		model.addAttribute("message", msg);
		model.addAttribute("loc", loc);
		
		return "msg";
	}
	
	@PostMapping("user/csedit")
	public String csEdit(Model model, @RequestParam(defaultValue = "0") int cs_idx) {
		CsVO cs = this.csService.selectCSbyidx(cs_idx);
		model.addAttribute("cs", cs);
		return "customer/csEdit";
	}
	
	@PostMapping("user/cseditEnd")
	public String csEditEnd(Model model, @ModelAttribute CsVO cs) {
		log.info(cs);
		int editCheck = this.csService.updateCS(cs);
		String msg = (editCheck > 0)? "해당 게시물의 정보가 정상적으로 변경되었습니다.":"게시물 수정 실패";
		String loc = (editCheck > 0)? "../cshome":"javascript:history.back()";
		model.addAttribute("message", msg);
		model.addAttribute("loc", loc);
		return "msg";
	}
}

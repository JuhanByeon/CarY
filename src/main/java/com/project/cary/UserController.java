package com.project.cary;

import java.util.List;

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

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.UserVO;
import com.project.cary.service.UserService;
import com.project.cary.service.UserServiceImpl;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		return "login/login";
	}
	
	@PostMapping("/loginEnd")
	public String LoginEnd(HttpSession session, Model model,
			@RequestParam(defaultValue = "") String userid,
			@RequestParam(defaultValue = "") String pwd) {
		UserVO user = this.userService.checkById(userid);
		log.info("user==="+user);
		
		if(!userid.trim().isEmpty() && !pwd.trim().isEmpty()) {
			if(user == null || !pwd.equals(user.getMember_pwd())) {
				model.addAttribute("message", "아이디 또는 비밀번호가 틀렸습니다.");
				return "msg";
			} else {
				session.setAttribute("loginUser", user);
			}
		}
		return "redirect:index";
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
	
	@GetMapping("/idCheck")
	public String idCheck(Model model, @RequestParam(defaultValue = "") String userid) {
		
		//체크해서 값이 나온다면 
		UserVO user = userService.checkById(userid);
		//log.info("///////idCheck///////user========"+ user);
		model.addAttribute("user", user);
	
		return "login/idCheckShow";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "member/signup";
	}
	
	@PostMapping("signupEnd")
	public String signupEnd(Model model,@ModelAttribute("user") UserVO user,BindingResult bindingResult){
		log.info(user);		
		int n = this.userService.insertMember(user);
		String msg = (n>0)? "회원 가입 되었습니다! 로그인 해주세요.":"회원 가입 실패! 입력값을 다시 확인해 주세요.";
		String loc = (n>0)? "login":"javascript:history.back()";
		model.addAttribute("message",msg);
		model.addAttribute("loc", loc);
		return "msg";
	}
	
	@GetMapping("/user/myPage")
	public String MyPage(Model model, HttpSession session) {
		UserVO user = (UserVO)session.getAttribute("loginUser");
		List<CarInfoVO> carList = this.userService.selectCarInfoByMemberIdx(user.getMember_idx());
		log.info(carList);
		model.addAttribute("cinfo",carList);
		return "member/mypage";
	}
	
	@GetMapping("/user/myPageEdit")
	public String myPageEdit(Model model,HttpSession session) {
		UserVO user = (UserVO)session.getAttribute("loginUser");
		
		UserVO member = this.userService.selectMemberByIdx(user.getMember_idx());
		model.addAttribute("member",member);
		return "member/mypageEdit";
	}
	
	@PostMapping("/myPageEditEnd")
	public String MyPageEditEnd(Model model, HttpSession session,@ModelAttribute("user") UserVO user) {
		
		UserVO user_from_session = (UserVO)session.getAttribute("loginUser");
		
		user.setMember_idx(user_from_session.getMember_idx());
		
		int n = this.userService.updateMember(user);
		
		String msg = n>0? "회원정보 수정 되었습니다":"회원 정보 수정 실패";
		String loc = n>0? "index":"javascript:history.back()";
		
		model.addAttribute("message",msg);
		model.addAttribute("loc",loc);
		return "msg";
	}
	
	//마이페이지에서 삭제
	
	//찜목록까지
}

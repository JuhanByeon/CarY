package com.project.cary;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.UserVO;
import com.project.cary.service.CarSellService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user")
@Log4j
public class CarSellController {

	@Autowired
	private CarSellService carSellService;
	
	@RequestMapping("/carSell")
	public String carsell() {
		return "/car/carSell";
	}
	
	@RequestMapping("/carSellEnd")
	public String carSellEnd(Model model, @ModelAttribute("car") CarInfoVO car,HttpServletRequest req,
			HttpSession session,
			@RequestParam("carTest_Img") MultipartFile carTest_Img,
			@RequestParam("c_Img1") MultipartFile c_Img1,
			@RequestParam("c_Img2") MultipartFile c_Img2,
			@RequestParam("c_Img3") MultipartFile c_Img3,
			BindingResult bindingResult) {
		
		ServletContext app = req.getServletContext();//해당 server의 폴더 경로
		
		String upDir = app.getRealPath("/Upload");//server에서 upload 폴더 경로
		System.out.println("업로드 디렉토리 주소: "+upDir);
		log.info("upDir========"+upDir);
		File dir = new File(upDir);
		if(!dir.exists()) {//해당 디렉토리 없으면 그냥 만들어버릴꺼임
			dir.mkdir();
		}
			
		String t_img = UUID.randomUUID().toString()+"_"+carTest_Img.getOriginalFilename();
		String c_img1 = UUID.randomUUID().toString()+"_"+ c_Img1.getOriginalFilename();
		String c_img2 = UUID.randomUUID().toString()+"_"+ c_Img2.getOriginalFilename();
		String c_img3 = UUID.randomUUID().toString()+"_"+ c_Img3.getOriginalFilename();
			
			try {
				//XXXX.transferTo(new File(YYYY,ZZZZ)); XXXX로 받은 파일을 YYYY라는 경로의 폴더로 ZZZZ라는 이름으로 저장
				carTest_Img.transferTo(new File(upDir,t_img));
				c_Img1.transferTo(new File(upDir,c_img1));
				c_Img2.transferTo(new File(upDir,c_img2));
				c_Img3.transferTo(new File(upDir,c_img3));
			}catch (IOException e) {
				e.printStackTrace();
			}
			// 3. 사용자가 입력한 값 받기.
			
			// 로그인한 회원 번호 받아와서 넘기기
			UserVO user = (UserVO)session.getAttribute("loginUser");
			
			int member_idx = user.getMember_idx();//로그인된 세션에서 회원번호를 찾는다.
			car.setMember_idx(member_idx);
			car.setCar_img1(c_img1);//랜덤하게 생성된 이름(c_img1)으로된 파일이름을 carInfo 객체에 넣어준다.
			car.setCar_img2(c_img2);//랜덤하게 생성된 이름(c_img2)으로된 파일이름을 carInfo 객체에 넣어준다.
			car.setCar_img3(c_img3);//랜덤하게 생성된 이름(c_img3)으로된 파일이름을 carInfo 객체에 넣어준다.
			
			// 유효성 체크

			//세부모델명으로 카테고리별 코드를 찾는 메소드---------------------------------------------------------
			CategoryVO category = this.carSellService.findACategorybySModelName(car.getS_name());
			log.info(category);
			car.setB_code(category.getB_code());
			car.setM_code(category.getM_code());
			car.setS_code(category.getS_code());
			//--------------------------------------------------------------------------------------
			log.info("최종 carinfo: " + car);
			int n1 = this.carSellService.carInsert(car);
			// 해쉬맵을 이용하여 옵션정보를 저장하는 메소드--------------------------------------------------------
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("car_idx", car.getIdx());
			map.put("opt_list",car.getOpt1());
			int n2 = this.carSellService.insertOptInfo(map);
			//-------------------------------------------------------------------------------------
			String msg = (n1>0)? "매물이 등록 되었습니다." : "매물 등록에 실패 했습니다.";
			String loc = (n1>0)? "../index":"javascript:history.back()";
			model.addAttribute("message",msg);
			model.addAttribute("loc",loc);
			return "msg";
		}
}

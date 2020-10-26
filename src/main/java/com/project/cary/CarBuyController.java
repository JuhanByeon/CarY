package com.project.cary;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.domain.OptionVO;
import com.project.cary.domain.UserVO;
import com.project.cary.service.CarBuyService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CarBuyController {
	
	@Autowired
	private CarBuyService carBuyService;
	
	@RequestMapping("/carList")
	public String carList() {
		return "/car/a_carlist";
	}
	
	@GetMapping("/cardetail")
	public String cardetailshow(Model model,@RequestParam(defaultValue = "0") int idx,HttpServletRequest req) {
		ServletContext app = req.getServletContext();//해당 server의 폴더 경로	
		String upDir = app.getRealPath("/Upload") + "\\";
		System.out.println(upDir);
		CarInfoVO car = this.carBuyService.selectCarDetail(idx);
		UserVO user = this.carBuyService.findUserByMemberIdx(car.getMember_idx());
		List<OptionVO> options = this.carBuyService.selectOption(String.valueOf(idx));
		
		model.addAttribute("options", options);
		model.addAttribute("car", car);
		model.addAttribute("user", user);
		model.addAttribute("upDir", upDir);
		return "/car/carDetail";
	}
	
	@GetMapping("/a_carList")
	public String aListShow(Model model) {
		return "/car/a_carlist";
	}
	
	@PostMapping("/carList")
	public String carList(Model model, @ModelAttribute("choice") ChoiceVO choice) {
		
		System.out.println
		("//--------------------------------------검색 결과 처리 구간-------------------------------------");
		if(choice.getCar_distance_min() == null) {
			choice.setCar_distance_min(0);
		}
		if(choice.getCar_distance_max() == null) {
			choice.setCar_distance_max(999999);
		}
		if(choice.getCar_Brand() != null) {
			choice = deadingwithEachCode(choice);
		}
		log.info(choice);
		List<CarInfoVO> cars = this.carBuyService.findCarList(choice);
		model.addAttribute("list", cars);
		return "/car/choiceSearch";
	}

	private ChoiceVO deadingwithEachCode(ChoiceVO search) {
		log.info(search);
		return search;
	}
}

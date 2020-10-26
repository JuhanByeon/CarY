package com.project.cary;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.PagingVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.service.MarketPriceService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MarketPriceController {
	
	//Service
	@Autowired
	private MarketPriceService marketPriceService;
	
	@GetMapping("/marketPrice")
	public String marketPricePageShow() {
		return "/market/marketPrice";
	}
	
	@PostMapping("/marketList")
	public String marketList(Model model,
			@ModelAttribute("search") ChoiceVO choice,
			@ModelAttribute("page") PagingVO pageInfo, BindingResult bindResult) {
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
		
		//-----------------------------옵션 항목 처리-------------------------------------------------
		List<Integer> resultList = new ArrayList<Integer>();
		resultList = findFinalList(choice.getOpt_idx());
		choice.setIdx_by_opt(resultList);
		//----------------------------------------------------------------------------------------
		
		System.out.println
		("//----------------------------------------------------------------------------------------");
		
		System.out.println
		("//-------------------------------------페이징-----------------------------------------------");
		List<CarInfoVO> carList= this.marketPriceService.carSearchByOption(choice);
		//여기에서는 start값과 end 값이 없어서 마지막 where문이 없기때문에 모든 값들을 받아올수 있다.
		log.info("carList for TotalCount: \n" + carList);
		if(carList != null && carList.size()!=0){
			pageInfo = setTotalCountandSise_minandSise_Max(pageInfo,carList);
		}
		carList.clear();
		pageInfo.init();//totalCount가 정해진 뒤에야 initialize가 가능해진다.
		choice.setStart(pageInfo.getStart());
		//mapperParamemter.put("start", start);
		choice.setEnd(pageInfo.getEnd());
		//mapperParamemter.put("end", end);
		carList= this.marketPriceService.carSearchByOption(choice);
		//이후 받아오는건 start와 end에의해 나뉘어진 리스트
		log.info(pageInfo);
		System.out.println
		("//----------------------------------------------------------------------------------------");
		log.info(carList);
		log.info(pageInfo);
		log.info(choice);
		
		model.addAttribute("carList", carList);
		model.addAttribute("page",pageInfo);
		model.addAttribute("choice", choice);
		//----------------------------------------------------------------------------------------*/
		return "market/marketList";
	}

	/**옵션(ex-통풍시트,후면카메라 etc.) 처리 메서드*/
	private List<Integer> findFinalList(List<Integer> opt_idx) {
		List<Integer> idx_by_opt = null;
		List<Integer> resultList = new ArrayList<Integer>();
		if(opt_idx != null) {// opt 하나 이상 선택 했다면
			idx_by_opt = this.marketPriceService.findCarsByOpts(opt_idx);
			log.info("Before:" + idx_by_opt);
			for (int i = 0; i < idx_by_opt.size(); i++) {
				boolean addElement = true;
				for (int j = 0; j < opt_idx.size(); j++) {
					Map<String, Object> map  = new HashMap<String, Object>();
					map.put("idx", idx_by_opt.get(i));//idx opt_idx
					map.put("opt_idx", opt_idx.get(j));//idx opt_idx
					int n = this.marketPriceService.findOptIntersection(map);
					map.clear();
					if(n == 0) {
						addElement = false;
						break;
					}
				}
				if(addElement) {
					resultList.add(idx_by_opt.get(i));
				}		
			}
			if(resultList.isEmpty()) {
				resultList.add(0);
			}
		}
		if(opt_idx == null) {
			resultList = null;
		} 
		log.info("After: " + resultList);
		return resultList;
	}

	private PagingVO setTotalCountandSise_minandSise_Max(PagingVO pageInfo, List<CarInfoVO> carList) {
		int totalCount = carList.size();
		pageInfo.setTotalCount(totalCount);
		int sise_min = carList.get(0).getCar_price();
		pageInfo.setSise_min(sise_min);
		int sise_max = carList.get(totalCount-1).getCar_price();
		pageInfo.setSise_max(sise_max);
		return pageInfo;
	}

	private ChoiceVO deadingwithEachCode(ChoiceVO search) {
		log.info(search);
		if(search.getCar_Brand() != null && !search.getCar_Brand().equals("제조사")) {
			CategoryVO category = this.marketPriceService.modelSearchList(search.getCar_Brand()).get(0);
			search.setB_code(category.getB_code());
		} else if(search.getCar_Model() != null && !search.getCar_Model().equals("모델")) {
			CategoryVO category = this.marketPriceService.dmodelSearchList(search.getCar_Model()).get(0);
			search.setB_code(category.getB_code());
			search.setM_code(category.getM_code());
		} else if(search.getCar_Detail() != null && !search.getCar_Detail().equals("세부모델")) {
			CategoryVO category = this.marketPriceService.findACategorybySModelName(search.getCar_Detail());
			search.setB_code(category.getB_code());
			search.setM_code(category.getM_code());
			search.setS_code(category.getS_code());
		}
		return search;
	}

	@GetMapping("/brandList")
	public String brandSearch(Model model,@RequestParam(defaultValue = "") String country) {
		int val = 0; 
		if(country.equals("국산")) {
			val = 1;
		} else if(country.equals("수입")) {
			val = 2;
		}
		log.info(country);
		List<CategoryVO> blist = this.marketPriceService.brandSearchList(val);
		log.info(blist);
		model.addAttribute("blist", blist);
		return "search/brandListByCoun";
	}
	
	@GetMapping("/modelList")
	public String modelListshow(Model model,@RequestParam(defaultValue = "") String brand) {
		log.info("queryString Value: " + brand +"(query name: \'brand\')");
		List<CategoryVO> mlist = this.marketPriceService.modelSearchList(brand);
		log.info(mlist);
		model.addAttribute("mlist", mlist);
		return "search/modelListByBrand";
	}
	@GetMapping("/sModelList")
	public String sModelListShow(Model model, @RequestParam() String carmodel) {
		log.info("queryString Value: " + carmodel +"(query name: \'carmodel\')");
		List<CategoryVO> dlist = this.marketPriceService.dmodelSearchList(carmodel);
		log.info(dlist);
		model.addAttribute("dlist", dlist);
		return "search/sModelListByModel";
	}
}

package com.project.cary.service;

import java.util.List;
import java.util.Map;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.ChoiceVO;

public interface MarketPriceService {
	public List<CategoryVO> brandSearchList(int val);
	public List<CategoryVO> modelSearchList(String brand);
	public List<CategoryVO> dmodelSearchList(String carmodel);
	public List<CarInfoVO> carSearchByOption(ChoiceVO search);
	public CategoryVO findACategorybySModelName(String s_model_name);
	public List<Integer> findCarsByOpts(List<Integer> opt_idx);
	public int findOptIntersection(Map<String, Object> map);
}

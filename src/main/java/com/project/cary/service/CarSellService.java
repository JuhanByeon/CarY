package com.project.cary.service;

import java.util.List;
import java.util.Map;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;

public interface CarSellService {
	public List<CategoryVO> brandSearchList(int val);
	public List<CategoryVO> modelSearchList(String brand);
	public List<CategoryVO> dmodelSearchList(String carmodel);
	public CategoryVO findACategorybySModelName(String s_model_name);
	public int carInsert(CarInfoVO car);
	public int insertOptInfo(Map<String, Object> map);
}

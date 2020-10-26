package com.project.cary.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.mapper.CarMapper;
import com.project.cary.mapper.CategoryMapper;


@Service("CarSellServiceImpl")
public class CarSellServiceImpl implements CarSellService{
	
	@Inject
	private CarMapper carMapper;
	
	@Inject
	private CategoryMapper categoryMapper;
	
	@Override
	public List<CategoryVO> brandSearchList(int val) {
		return this.carMapper.brandSearchList(val);
	}

	@Override
	public List<CategoryVO> modelSearchList(String brand) {
		return this.carMapper.modelSearchList(brand);
	}

	@Override
	public List<CategoryVO> dmodelSearchList(String carmodel) {
		return this.carMapper.dmodelSearchList(carmodel);
	}

	@Override
	public CategoryVO findACategorybySModelName(String s_model_name) {
		return this.carMapper.searchByDemodel(s_model_name);
	}

	@Override
	public int carInsert(CarInfoVO car) {
		return this.carMapper.carInsert(car);
	}

	@Override
	public int insertOptInfo(Map<String, Object> map) {
		return this.carMapper.insertOptInfo(map);
	}

	
}

package com.project.cary.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.mapper.CarMapper;
import com.project.cary.mapper.CategoryMapper;

@Service("MarketPriceServiceImpl")
public class MarketPriceServiceImpl implements MarketPriceService {

	@Autowired
	private CarMapper carMapper;
	
	@Autowired
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
	public List<CarInfoVO> carSearchByOption(ChoiceVO search) {
		return this.carMapper.carSearchByOption(search);
	}

	@Override
	public CategoryVO findACategorybySModelName(String s_model_name) {
		return this.carMapper.searchByDemodel(s_model_name);
	}

	@Override
	public List<Integer> findCarsByOpts(List<Integer> opt_idx) {
		return this.carMapper.findCarsByOpts(opt_idx);
	}

	@Override
	public int findOptIntersection(Map<String, Object> map) {
		return this.carMapper.findOptIntersection(map);
	}

}

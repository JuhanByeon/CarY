package com.project.cary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.domain.OptionVO;
import com.project.cary.domain.UserVO;
import com.project.cary.mapper.CarMapper;
import com.project.cary.mapper.UserMapper;

@Service("CarBuyServiceImpl")
public class CarBuyServiceImpl implements CarBuyService {

	@Autowired
	private CarMapper carMapper;
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public CarInfoVO selectCarDetail(int idx) {
		return this.carMapper.selectCarDetail(idx);
	}

	@Override
	public List<OptionVO> selectOption(String idx) {
		return this.carMapper.selectOption(idx);
	}

	@Override
	public UserVO findUserByMemberIdx(int member_idx) {
		return this.userMapper.selectMemberByIdx(member_idx);
	}

	@Override
	public List<CarInfoVO> findCarList(ChoiceVO choice) {
		return this.carMapper.carSearchByOption(choice);
	}
}

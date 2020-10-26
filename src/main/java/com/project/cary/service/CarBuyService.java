package com.project.cary.service;

import java.util.List;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.domain.OptionVO;
import com.project.cary.domain.UserVO;

public interface CarBuyService {
	public CarInfoVO selectCarDetail(int idx);
	public UserVO findUserByMemberIdx(int member_idx);
	public List<OptionVO> selectOption(String idx);
	public List<CarInfoVO> findCarList(ChoiceVO choice);
}

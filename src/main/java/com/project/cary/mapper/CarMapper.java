package com.project.cary.mapper;

import java.util.List;
import java.util.Map;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.ChoiceVO;
import com.project.cary.domain.OptionVO;

public interface CarMapper {
	public List<CategoryVO> brandSearchList(int val);
	public List<CategoryVO> modelSearchList(String brand);
	public List<CategoryVO> dmodelSearchList(String modelName);
	public int carInsert(CarInfoVO car);
	public CategoryVO searchByDemodel(String SModelName);
	public int insertOptInfo(Map<String, Object> map);
	public List<CarInfoVO> selectCarInfoByMemberIdx(int member_idx);

	public List<CarInfoVO> carSearchByOption(ChoiceVO search);
	public List<Integer> findCarsByOpts(List<Integer> opt_idx);
	public int findOptIntersection(Map<String, Object> map);

	public CarInfoVO selectCarDetail(int idx);
	public List<OptionVO> selectOption(String idx);
}

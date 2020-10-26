package com.project.cary.service;

import java.util.List;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.UserVO;

public interface UserService {
	public int insertMember(UserVO user); 
	public UserVO checkById(String member_id);
	public List<CarInfoVO> selectCarInfoByMemberIdx(int member_idx);
	public UserVO selectMemberByIdx(int member_idx);
	public int updateMember(UserVO user);
}

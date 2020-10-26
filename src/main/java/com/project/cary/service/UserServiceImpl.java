package com.project.cary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cary.domain.CarInfoVO;
import com.project.cary.domain.CategoryVO;
import com.project.cary.domain.UserVO;
import com.project.cary.mapper.CarMapper;
import com.project.cary.mapper.UserMapper;


@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private CarMapper carMapper;
	
	@Override
	public int insertMember(UserVO user) {
		return this.userMapper.insertMember(user);
	}

	@Override
	public UserVO checkById(String member_id) {
		return this.userMapper.checkById(member_id);
	}

	@Override
	public List<CarInfoVO> selectCarInfoByMemberIdx(int member_idx) {
		return this.carMapper.selectCarInfoByMemberIdx(member_idx);
	}

	@Override
	public UserVO selectMemberByIdx(int member_idx) {
		return this.userMapper.selectMemberByIdx(member_idx);
	}

	@Override
	public int updateMember(UserVO user) {
		return this.userMapper.updateMember(user);
	}
}

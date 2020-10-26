package com.project.cary.mapper;

import com.project.cary.domain.UserVO;

public interface UserMapper {
	public int insertMember(UserVO user); 
	public UserVO checkById(String member_id);//체크하는 아이디가 존재한다면 특정 row가 반환 아니라면 null값이 아닌 빈 값이 나올것임
	public UserVO selectMemberByIdx(int member_idx);
	public int updateMember(UserVO user);
}

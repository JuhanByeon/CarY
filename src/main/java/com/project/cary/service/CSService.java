package com.project.cary.service;

import java.util.List;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;

public interface CSService {

	public int getTheNumberOfLists();//전체 게시판의 수 반환(R)
	public List<CsVO> selectCSList();//전체 게시판 선택(R)
	public CsVO selectCSbyidx(int idx);//하나의 게시물 선택(R)
	public int insertCS(CsVO cs);//게시물 올리기(C)
	public int updateCS(CsVO cs);//게시물 수정(U)
	public int deleteCSbyidx(int idx);//특정 게시물 삭제(D)
	
	//public List<CsVO> csListwithPaging(PagingVO pageInfo);

}

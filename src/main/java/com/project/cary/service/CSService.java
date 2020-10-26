package com.project.cary.service;

import java.util.List;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;

public interface CSService {

	public int getTotalCount();

	public List<CsVO> csListwithPaging(PagingVO pageInfo);

	public CsVO getcs(int idx);

	public int insertCS(CsVO cs);

}

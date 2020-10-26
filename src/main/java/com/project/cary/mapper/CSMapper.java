package com.project.cary.mapper;

import java.util.List;
import java.util.Map;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;

public interface CSMapper {
	public int insertCS(CsVO cs);
	public List<CsVO> csList();
	public int getTotalCount();
	public List<CsVO> pageCs(PagingVO pageInfo);
	public CsVO getcs(int cs_idx);
	public int editCs(Map<String,Object> map);
	public int deleteCS(int cs_idx);
}

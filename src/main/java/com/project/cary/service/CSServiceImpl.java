package com.project.cary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;
import com.project.cary.mapper.CSMapper;

@Service("CSServiceImpl")
public class CSServiceImpl implements CSService {

	@Autowired
	private CSMapper csMapper;
	
	@Override
	public int getTotalCount() {
		return this.csMapper.getTotalCount();
	}

	@Override
	public List<CsVO> csListwithPaging(PagingVO pageInfo) {
		return this.csMapper.pageCs(pageInfo);
	}

	@Override
	public CsVO getcs(int idx) {
		return this.csMapper.getcs(idx);
	}

	@Override
	public int insertCS(CsVO cs) {
		return this.csMapper.insertCS(cs);
	}

}

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
	public int getTheNumberOfLists() {
		return this.csMapper.getTotalCount();
	}

	@Override
	public List<CsVO> selectCSList() {
		return this.csMapper.csTotalList();
	}

	@Override
	public CsVO selectCSbyidx(int idx) {
		return this.csMapper.getSpecificCS(idx);
	}

	@Override
	public int insertCS(CsVO cs) {
		return this.csMapper.insertCS(cs);
	}

	@Override
	public int updateCS(CsVO cs) {
		return this.csMapper.editCS(cs);
	}

	@Override
	public int deleteCSbyidx(int idx) {
		return this.csMapper.deleteCS(idx);
	}
	
	

}

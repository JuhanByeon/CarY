package com.project.cary.mapper;

import java.util.List;
import java.util.Map;

import com.project.cary.domain.CsVO;
import com.project.cary.domain.PagingVO;

public interface CSMapper {
	
	
	public int insertCS(CsVO cs);
	public List<CsVO> csTotalList();
	public int getTotalCount();
	
	//<select id="pageCs" parameterType="HashMap" resultType="Cs">
		//select * from (	select ROWNUM rn, c.* from
		//(select * from cs order by cs_idx desc) c)
		//where rn between #{start} and #{end}
	//</select>
	public CsVO getSpecificCS(int idx);
	public int editCS(CsVO cs);
	public int deleteCS(int cs_idx);
}

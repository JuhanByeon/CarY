package com.project.cary.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import lombok.Data;

@Data
public class PagingVO {
	private int cpage;
	private int pageSize;
	private int totalCount;
	private int pageCount;
	
	private int start;
	private int end;
	
	private int pagingBlock=10;
	private int prevBlock;
	private int nextBlock;
	
	private int sise_min;
	private int sise_max;
	
	public void init() {
		pageSize = 8;
 		
		pageCount=(totalCount-1)/pageSize+1;
		if(cpage<1) {
			cpage=1;
		}
		if(cpage>pageCount) {
			cpage=pageCount;
		}
		end= cpage * pageSize;
		start = end -pageSize;
		
		prevBlock =(cpage-1)/pagingBlock * pagingBlock;
		nextBlock = prevBlock + (pagingBlock+1);
		
	}
}









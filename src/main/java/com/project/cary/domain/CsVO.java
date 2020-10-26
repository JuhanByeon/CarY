package com.project.cary.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CsVO {

	private  int cs_idx;
	private  String cs_tit;
	private  String cs_content;
	private  String cs_writer;
	private  Date cs_date;
	private  int cs_secret;
	
	private  int member_idx;
	
}

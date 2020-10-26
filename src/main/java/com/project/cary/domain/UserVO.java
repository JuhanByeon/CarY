package com.project.cary.domain;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class UserVO implements Serializable {
	private int member_idx;
	private String member_id;
	private String member_pwd;
	private String member_email;
	private int member_year;
	private int member_month;
	private int member_day;
	private String member_sex;
	private int member_post;
	private String member_addr1;
	private String member_addr2;
	private String member_name;
	private String member_phone;
	private java.sql.Date member_date;
	
}
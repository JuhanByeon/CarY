package com.project.cary.domain;

import java.util.List;

import lombok.Data;

@Data
public class ChoiceVO {
	private Integer countryNum;
	private String car_Brand;
	private Integer b_code;
	private String car_Model;
	private Integer m_code;
	private String car_Detail;   
	private Integer s_code;   
	private Integer car_distance_min;
	private Integer car_distance_max;
	private List<String> car_Color;
	private List<String> car_Fuel;
	private List<String> car_Gear;
	private List<String> car_test;
	private List<String> car_Seat;
	private List<Integer> opt_idx;
	private List<Integer> idx_by_opt;
	
	private Integer start;
	private Integer end;
}

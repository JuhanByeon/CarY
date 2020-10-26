package com.project.cary.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class CarInfoVO implements Serializable {

	private int idx; // 글번호
	private String car_num; // 차량번호
	private String car_size; // 차종
	private int b_code; // 브랜드코드
	private int m_code; // 모델코드
	private int s_code; // 세부모델코드
	
	private String b_name;
	private String m_name;
	private String s_name;
	
	private String car_fuel; // 연료
	private String car_age; // 연식
	private int car_cc; // 배기량
	private String car_seat; // 인승
	
	private String car_gear; // 변속기
	private String car_color; // 색상
	private int car_km; // 주행거리
	
	private int car_price; // 차 가격
	private String car_test; // 성능점검
	private String car_intro; // 차량 설명
	
	private int member_idx; // 글을 등록하는 회원의 회원번호
	
	private String car_img1; // 차량 사진1
	private String car_img2; // 차량 사진2
	private String car_img3; // 차량 사진3
	private Date car_date; // 게시글 등록시간
	int car_view; // 판매글 조회수 
	
	
	// 관리자 관리 변수
	int car_yn; // 차량 판매 여부
	int car_hs; // 홈 서비스 가능 여부
	
	// 차량 옵션 정보
	private List<Integer> opt1;
	private String opt2;
	private String opt3;
	private String opt4;
	
	
}


	
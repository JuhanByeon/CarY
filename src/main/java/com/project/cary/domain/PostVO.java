package com.project.cary.domain;

public class PostVO {

	private String new_Post_Code;
	private String sido_Kor;
	private String sido_Eng;
	private String sigungu_Kor;
	private String sigungu_Eng; 
	private String upmyon_Kor; 
	private String upmyon_Eng;
	private String doro_Num;
	private String doro_Kor;
	private String doro_Eng;
	private int under_Flag; 
	private int bld_Origin_Num;
	private int bld_Reefr_Num; 
	private String bld_Manage_Num;
	private String multi_Deliver_Name;
	private String sigungu_Bld_Name; 
	private String law_Dong_Num;
	private String law_Dong_Name;
	private String ri_Name;
	private String admin_Dong_Name; 
	private int jibeon_Bonbeon;
	private String upmyondong_Seq;
	private int jibeon_Bubeon; 
	private String old_Post_Code; 
	private String post_Code_Seq;
	
	public PostVO( ) {
		System.out.println("PostVO 생성 컴플리트");
	}

	public PostVO(String new_Post_Code, String sido_Kor, String sido_Eng, String sigungu_Kor, String sigungu_Eng,
			String upmyon_Kor, String upmyon_Eng, String doro_Num, String doro_Kor, String doro_Eng, int under_Flag,
			int bld_Origin_Num, int bld_Reefr_Num, String bld_Manage_Num, String multi_Deliver_Name,
			String sigungu_Bld_Name, String law_Dong_Num, String law_Dong_Name, String ri_Name, String admin_Dong_Name,
			int jibeon_Bonbeon, String upmyondong_Seq, int jibeon_Bubeon, String old_Post_Code, String post_Code_Seq) {
		super();
		this.new_Post_Code = new_Post_Code;
		this.sido_Kor = sido_Kor;
		this.sido_Eng = sido_Eng;
		this.sigungu_Kor = sigungu_Kor;
		this.sigungu_Eng = sigungu_Eng;
		this.upmyon_Kor = upmyon_Kor;
		this.upmyon_Eng = upmyon_Eng;
		this.doro_Num = doro_Num;
		this.doro_Kor = doro_Kor;
		this.doro_Eng = doro_Eng;
		this.under_Flag = under_Flag;
		this.bld_Origin_Num = bld_Origin_Num;
		this.bld_Reefr_Num = bld_Reefr_Num;
		this.bld_Manage_Num = bld_Manage_Num;
		this.multi_Deliver_Name = multi_Deliver_Name;
		this.sigungu_Bld_Name = sigungu_Bld_Name;
		this.law_Dong_Num = law_Dong_Num;
		this.law_Dong_Name = law_Dong_Name;
		this.ri_Name = ri_Name;
		this.admin_Dong_Name = admin_Dong_Name;
		this.jibeon_Bonbeon = jibeon_Bonbeon;
		this.upmyondong_Seq = upmyondong_Seq;
		this.jibeon_Bubeon = jibeon_Bubeon;
		this.old_Post_Code = old_Post_Code;
		this.post_Code_Seq = post_Code_Seq;
	}

	public String getNew_Post_Code() {
		return new_Post_Code;
	}

	public void setNew_Post_Code(String new_Post_Code) {
		this.new_Post_Code = new_Post_Code;
	}

	public String getSido_Kor() {
		return sido_Kor;
	}

	public void setSido_Kor(String sido_Kor) {
		this.sido_Kor = sido_Kor;
	}

	public String getSido_Eng() {
		return sido_Eng;
	}

	public void setSido_Eng(String sido_Eng) {
		this.sido_Eng = sido_Eng;
	}

	public String getSigungu_Kor() {
		return sigungu_Kor;
	}

	public void setSigungu_Kor(String sigungu_Kor) {
		this.sigungu_Kor = sigungu_Kor;
	}

	public String getSigungu_Eng() {
		return sigungu_Eng;
	}

	public void setSigungu_Eng(String sigungu_Eng) {
		this.sigungu_Eng = sigungu_Eng;
	}

	public String getUpmyon_Kor() {
		return upmyon_Kor;
	}

	public void setUpmyon_Kor(String upmyon_Kor) {
		this.upmyon_Kor = upmyon_Kor;
	}

	public String getUpmyon_Eng() {
		return upmyon_Eng;
	}

	public void setUpmyon_Eng(String upmyon_Eng) {
		this.upmyon_Eng = upmyon_Eng;
	}

	public String getDoro_Num() {
		return doro_Num;
	}

	public void setDoro_Num(String doro_Num) {
		this.doro_Num = doro_Num;
	}

	public String getDoro_Kor() {
		return doro_Kor;
	}

	public void setDoro_Kor(String doro_Kor) {
		this.doro_Kor = doro_Kor;
	}

	public String getDoro_Eng() {
		return doro_Eng;
	}

	public void setDoro_Eng(String doro_Eng) {
		this.doro_Eng = doro_Eng;
	}

	public int getUnder_Flag() {
		return under_Flag;
	}

	public void setUnder_Flag(int under_Flag) {
		this.under_Flag = under_Flag;
	}

	public int getBld_Origin_Num() {
		return bld_Origin_Num;
	}

	public void setBld_Origin_Num(int bld_Origin_Num) {
		this.bld_Origin_Num = bld_Origin_Num;
	}

	public int getBld_Reefr_Num() {
		return bld_Reefr_Num;
	}

	public void setBld_Reefr_Num(int bld_Reefr_Num) {
		this.bld_Reefr_Num = bld_Reefr_Num;
	}

	public String getBld_Manage_Num() {
		return bld_Manage_Num;
	}

	public void setBld_Manage_Num(String bld_Manage_Num) {
		this.bld_Manage_Num = bld_Manage_Num;
	}

	public String getMulti_Deliver_Name() {
		return multi_Deliver_Name;
	}

	public void setMulti_Deliver_Name(String multi_Deliver_Name) {
		this.multi_Deliver_Name = multi_Deliver_Name;
	}

	public String getSigungu_Bld_Name() {
		return sigungu_Bld_Name;
	}

	public void setSigungu_Bld_Name(String sigungu_Bld_Name) {
		this.sigungu_Bld_Name = sigungu_Bld_Name;
	}

	public String getLaw_Dong_Num() {
		return law_Dong_Num;
	}

	public void setLaw_Dong_Num(String law_Dong_Num) {
		this.law_Dong_Num = law_Dong_Num;
	}

	public String getLaw_Dong_Name() {
		return law_Dong_Name;
	}

	public void setLaw_Dong_Name(String law_Dong_Name) {
		this.law_Dong_Name = law_Dong_Name;
	}

	public String getRi_Name() {
		return ri_Name;
	}

	public void setRi_Name(String ri_Name) {
		this.ri_Name = ri_Name;
	}

	public String getAdmin_Dong_Name() {
		return admin_Dong_Name;
	}

	public void setAdmin_Dong_Name(String admin_Dong_Name) {
		this.admin_Dong_Name = admin_Dong_Name;
	}

	public int getJibeon_Bonbeon() {
		return jibeon_Bonbeon;
	}

	public void setJibeon_Bonbeon(int jibeon_Bonbeon) {
		this.jibeon_Bonbeon = jibeon_Bonbeon;
	}

	public String getUpmyondong_Seq() {
		return upmyondong_Seq;
	}

	public void setUpmyondong_Seq(String upmyondong_Seq) {
		this.upmyondong_Seq = upmyondong_Seq;
	}

	public int getJibeon_Bubeon() {
		return jibeon_Bubeon;
	}

	public void setJibeon_Bubeon(int jibeon_Bubeon) {
		this.jibeon_Bubeon = jibeon_Bubeon;
	}

	public String getOld_Post_Code() {
		return old_Post_Code;
	}

	public void setOld_Post_Code(String old_Post_Code) {
		this.old_Post_Code = old_Post_Code;
	}

	public String getPost_Code_Seq() {
		return post_Code_Seq;
	}

	public void setPost_Code_Seq(String post_Code_Seq) {
		this.post_Code_Seq = post_Code_Seq;
	}
	
}



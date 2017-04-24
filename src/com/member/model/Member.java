package com.member.model;

import java.util.Date;

public class Member {
	private int member_id;
	private String member_name;
	private String member_sex;
	private String member_tell;
	private String member_add;
	private int grade_id;
	private int integral;

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_sex() {
		return member_sex;
	}

	public void setMember_sex(String member_sex) {
		this.member_sex = member_sex;
	}

	public String getMember_tell() {
		return member_tell;
	}

	public void setMember_tell(String member_tell) {
		this.member_tell = member_tell;
	}

	
	public String getMember_add() {
		return member_add;
	}

	public void setMember_add(String member_add) {
		this.member_add = member_add;
	}

	public int getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(int grade_id) {
		this.grade_id = grade_id;
	}

	public int getIntegral() {
		return integral;
	}

	public void setIntegral(int integral) {
		this.integral = integral;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_name=" + member_name + ", member_sex=" + member_sex
				+ ", member_tell=" + member_tell + ", member_add=" + member_add + ", grade_id=" + grade_id
				+ ", integral=" + integral + "]";
	}

}

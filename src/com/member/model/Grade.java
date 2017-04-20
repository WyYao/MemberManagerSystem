package com.member.model;

public class Grade {

	private int grade_id;
	private String grade_name;
	private float discount;

	public int getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(int grade_id) {
		this.grade_id = grade_id;
	}

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public float getdiscount() {
		return discount;
	}

	public void setdiscount(float discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "Grade [grade_id=" + grade_id + ", grade_name=" + grade_name + ", discount=" + discount + "]";
	}

}

package com.member.model;

public class Employee {

	private int emp_id;
	private String emp_pw;
	private String emp_name;
	private String emp_sex;
	private String emp_tell;
	private String emp_add;

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_pw() {
		return emp_pw;
	}

	public void setEmp_pw(String emp_pw) {
		this.emp_pw = emp_pw;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getEmp_sex() {
		return emp_sex;
	}

	public void setEmp_sex(String emp_sex) {
		this.emp_sex = emp_sex;
	}

	public String getEmp_tell() {
		return emp_tell;
	}

	public void setEmp_tell(String emp_tell) {
		this.emp_tell = emp_tell;
	}

	public String getEmp_add() {
		return emp_add;
	}

	public void setEmp_add(String emp_add) {
		this.emp_add = emp_add;
	}

	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", emp_pw=" + emp_pw + ", emp_name=" + emp_name + ", emp_sex=" + emp_sex
				+ ", emp_tell=" + emp_tell + ", emp_add=" + emp_add + "]";
	}

}

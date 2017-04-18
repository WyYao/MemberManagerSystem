package com.member.po;

public class EmployeePO {
	private int emp_id;
	private String emp_pw;
	private String emp_name;

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

	@Override
	public String toString() {
		return "EmployeePO [emp_id=" + emp_id + ", emp_pw=" + emp_pw + ", emp_name=" + emp_name + "]";
	}

}

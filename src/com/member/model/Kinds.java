package com.member.model;

public class Kinds {
	private int kinds_id;
	private String kinds_name;

	public int getKinds_id() {
		return kinds_id;
	}

	public void setKinds_id(int kinds_id) {
		this.kinds_id = kinds_id;
	}

	public String getKinds_name() {
		return kinds_name;
	}

	public void setKinds_name(String kinds_name) {
		this.kinds_name = kinds_name;
	}

	@Override
	public String toString() {
		return "Kinds [kinds_id=" + kinds_id + ", kinds_name=" + kinds_name + "]";
	}

}

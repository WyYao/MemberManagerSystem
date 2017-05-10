package com.member.vo;

import java.util.Date;

public class OrderVO {
	private int order_id;
	private Date date;
	private int member_id;
	private String member_name;
	private double total_price;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

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

	public double getTotal_price() {
		return total_price;
	}

	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "OrderVO [order_id=" + order_id + ", date=" + date + ", member_id=" + member_id + ", member_name="
				+ member_name + ", total_price=" + total_price + "]";
	}

}

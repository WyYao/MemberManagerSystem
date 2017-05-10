package com.member.model;

import java.util.Date;

public class Order {
	private int order_id;
	private int member_id;
	private Date date;
	private double total_price;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getTotal_price() {
		return total_price;
	}

	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", member_id=" + member_id + ", date=" + date + ", total_price="
				+ total_price + "]";
	}

}

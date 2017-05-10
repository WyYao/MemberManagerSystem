package com.member.vo;

import java.util.Date;

public class DetailVO {

	private int order_id;
	private int goods_id;
	private String goods_name;
	private int detail_num;
	private double sell_price;

	private int kinds_id;
	private String kinds_name;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public int getDetail_num() {
		return detail_num;
	}

	public void setDetail_num(int detail_num) {
		this.detail_num = detail_num;
	}

	public double getSell_price() {
		return sell_price;
	}

	public void setSell_price(double sell_price) {
		this.sell_price = sell_price;
	}

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
		return "DetailVO [order_id=" + order_id + ", goods_id=" + goods_id + ", goods_name=" + goods_name
				+ ", detail_num=" + detail_num + ", sell_price=" + sell_price + ", kinds_id=" + kinds_id
				+ ", kinds_name=" + kinds_name + "]";
	}
}

package com.member.model;

public class Goods {
	private int goods_id;
	private String goods_name;
	private int kinds_id;
	private int num;
	private double purch_price;
	private double sell_price;

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

	public int getKinds_id() {
		return kinds_id;
	}

	public void setKinds_id(int kinds_id) {
		this.kinds_id = kinds_id;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public double getPurch_price() {
		return purch_price;
	}

	public void setPurch_price(double purch_price) {
		this.purch_price = purch_price;
	}

	public double getSell_price() {
		return sell_price;
	}

	public void setSell_price(double sell_price) {
		this.sell_price = sell_price;
	}

	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", kinds_id=" + kinds_id + ", num=" + num
				+ ", purch_price=" + purch_price + ", sell_price=" + sell_price + "]";
	}

}

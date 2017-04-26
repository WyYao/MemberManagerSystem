package com.member.vo;

import java.util.Date;

public class DetailVO {
	private int member_id;
	private String member_name;

	private int goods_id;
	private String goods_name;
	private int num;
	private double sell_price;

	private int kinds_id;
	private String kinds_name;

	private int id;
	private Date date;
	private int detail_num;

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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getDetail_num() {
		return detail_num;
	}

	public void setDetail_num(int detail_num) {
		this.detail_num = detail_num;
	}

	@Override
	public String toString() {
		return "DetailVO [member_id=" + member_id + ", member_name=" + member_name + ", goods_id=" + goods_id
				+ ", goods_name=" + goods_name + ", num=" + num + ", sell_price=" + sell_price + ", kinds_id="
				+ kinds_id + ", kinds_name=" + kinds_name + ", id=" + id + ", date=" + date + ", detail_num="
				+ detail_num + "]";
	}

}

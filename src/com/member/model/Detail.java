package com.member.model;

import java.util.Date;

public class Detail {
	private int id;
	private int member_id;
	private int detail_num;
	private int goods_id;
	private Date date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
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
		return "Detail [id=" + id + ", member_id=" + member_id + ", detail_num=" + detail_num + ", goods_id=" + goods_id
				+ ", date=" + date + "]";
	}

}

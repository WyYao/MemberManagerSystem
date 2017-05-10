package com.member.model;

public class Detail {
	private int order_id;
	private int detail_num;
	private int goods_id;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getDetail_num() {
		return detail_num;
	}

	public void setDetail_num(int detail_num) {
		this.detail_num = detail_num;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	@Override
	public String toString() {
		return "Detail [order_id=" + order_id + ", detail_num=" + detail_num + ", goods_id=" + goods_id + "]";
	}

}

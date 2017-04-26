package com.member.service;

import java.util.List;

import com.member.model.Goods;
import com.member.vo.GoodsVO;

public interface GoodsService {
	public List<GoodsVO> listAll();
	public void addGoods(Goods goods);
}

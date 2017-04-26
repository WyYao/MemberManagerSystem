package com.member.mapper;

import java.util.List;

import com.member.model.Goods;
import com.member.vo.GoodsVO;

public interface GoodsMapper {
	public List<GoodsVO> listAllm();
	public void addGoodsm(Goods goods);
}

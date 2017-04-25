package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.service.GoodsService;
import com.member.vo.GoodsVO;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsServic;

	public GoodsService getGoodsServic() {
		return goodsServic;
	}

	public void setGoodsServic(GoodsService goodsServic) {
		this.goodsServic = goodsServic;
	}
	
	@RequestMapping("/listAll")
	public ResponseEntity<List<GoodsVO>> listAll(){
		System.out.println("contero");
		List<GoodsVO> goodss = goodsServic.listAll();
		return new ResponseEntity<List<GoodsVO>>(goodss,HttpStatus.OK);
	}
}

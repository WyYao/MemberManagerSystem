package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.model.Detail;
import com.member.service.DetailService;
import com.member.vo.DetailVO;

@Controller
@RequestMapping("/detail")
public class DetailController {
	
	@Autowired
	private DetailService detailService;
	
	
	public DetailService getDetailService() {
		return detailService;
	}

	public void setDetailService(DetailService detailService) {
		this.detailService = detailService;
	}

	@RequestMapping("/listById")
	public ResponseEntity<List<DetailVO>> listById(Detail detail){
		List<DetailVO> detailVOs = detailService.listById(detail);
		return new ResponseEntity<List<DetailVO>>(detailVOs,HttpStatus.OK);
	}
	
	
}

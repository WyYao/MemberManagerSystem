package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.model.Kinds;
import com.member.service.KindsService;

@Controller
@RequestMapping("/kinds")
public class KindsController {
	
	@Autowired
	private KindsService kindsService;

	public KindsService getKindsService() {
		return kindsService;
	}

	public void setKindsService(KindsService kindsService) {
		this.kindsService = kindsService;
	}
	
	@RequestMapping("/listAll")
	public ResponseEntity<List<Kinds>> listAll(){
		List<Kinds> kindss = kindsService.listAll();
		return new ResponseEntity<List<Kinds>>(kindss,HttpStatus.OK);
	}

	@RequestMapping("/addKinds")
	public @ResponseBody String addKinds(Kinds kinds){
		kindsService.addKinds(kinds);
		return "{\"kinds\" : \"ok\"}";
	}
}

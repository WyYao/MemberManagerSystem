package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.model.Member;
import com.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping("/listAll")
	public ResponseEntity<List<Member>> listAll(){
		List<Member> members = memberService.listAll();
		return new ResponseEntity<List<Member>>(members,HttpStatus.OK);
	}
	
	@RequestMapping("/addMember")
	public @ResponseBody String addMember(Member member){
		memberService.addMember(member);
		return "{\"member\" : \"ok\"}";
	}
	
	@RequestMapping("/listByTell")
	public ResponseEntity<List<Member>> listByTell(Member member){
		List<Member> members = memberService.listByTell(member);
		ResponseEntity<List<Member>> result = new ResponseEntity<List<Member>>(members,HttpStatus.OK);
		if(result!=null){
			return result;
		}else{
			return null;
		}
	}
	
	@RequestMapping("/deleteMember")
	public @ResponseBody String deleteMember(Member member){
		memberService.deleteMember(member);
		return "{\"member\" : \"ok\"}";
	}
	
	@RequestMapping("/listById")
	public ResponseEntity<List<Member>> listById(Member member){
		List<Member> members = memberService.listById(member);
		return new ResponseEntity<List<Member>>(members,HttpStatus.OK);
	}
	
	@RequestMapping("/editMember")
	public @ResponseBody String editMember(Member member){
		memberService.editMember(member);
		return "{\"member\" : \"ok\"}";
	}
}

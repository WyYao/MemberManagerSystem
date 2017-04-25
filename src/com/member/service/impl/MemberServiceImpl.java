package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.MemberMapper;
import com.member.model.Member;
import com.member.service.MemberService;
import com.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

	public MemberMapper getMemberMapper() {
		return memberMapper;
	}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	@Override
	public List<MemberVO> listAll() {
		return memberMapper.listAllm();
	}

	@Override
	public void addMember(Member member) {
		memberMapper.addMemberm(member);
	}

	@Override
	public List<Member> listByTell(Member member) {
		return memberMapper.listByTellm(member);
	}

	@Override
	public void deleteMember(Member member) {
		memberMapper.deleteMemberm(member);
	}

	@Override
	public List<MemberVO> listById(Member member) {
		return memberMapper.listByIdm(member);
	}

	@Override
	public void editMember(Member member) {
		memberMapper.editMemberm(member);

	}

}

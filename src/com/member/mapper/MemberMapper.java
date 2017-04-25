package com.member.mapper;

import java.util.List;

import com.member.model.Member;
import com.member.vo.MemberVO;

public interface MemberMapper {
	public List<MemberVO> listAllm();
	public void addMemberm(Member member);
	public List<Member> listByTellm(Member member);
	public void deleteMemberm(Member member);
	public List<MemberVO> listByIdm(Member member);
	public void editMemberm(Member member);
}

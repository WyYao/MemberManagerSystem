package com.member.service;

import java.util.List;

import com.member.model.Member;
import com.member.vo.MemberVO;

public interface MemberService {
	List<MemberVO> listAll();
	void addMember(Member member);
	List<Member> listByTell(Member member);
	void deleteMember(Member member);
	List<MemberVO> listById(Member member);
	void editMember(Member member);
}

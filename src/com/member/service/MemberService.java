package com.member.service;

import java.util.List;

import com.member.model.Member;

public interface MemberService {
	List<Member> listAll();
	void addMember(Member member);
	List<Member> listByTell(Member member);
	void deleteMember(Member member);
	List<Member> listById(Member member);
	void editMember(Member member);
}

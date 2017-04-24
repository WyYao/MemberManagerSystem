package com.member.mapper;

import java.util.List;

import com.member.model.Grade;
import com.member.model.Member;

public interface MemberMapper {
	public List<Member> listAllm();
	public void addMemberm(Member member);
	public List<Member> listByTellm(Member member);
	public void deleteMemberm(Member member);
	public List<Member> listByIdm(Member member);
	public void editMemberm(Member member);
}

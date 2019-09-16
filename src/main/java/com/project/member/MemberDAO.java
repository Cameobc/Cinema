package com.project.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="MemberMapper.";
	
	
	//회원가입
	public int setJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setJoin", memberVO);
	}
}

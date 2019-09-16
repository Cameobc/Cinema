package com.project.files;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

public class FilesDAO {

	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESAPCE="FilesMapper.";
	
	public int setWrite(FilesVO filesVO) throws Exception{
		return sqlSession.insert(NAMESAPCE+"setWrite", filesVO);
	}
}

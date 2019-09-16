package com.project.cinema.notice;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.project.board.BoardVO;
import com.project.board.notice.NoticeDAO;
import com.project.board.notice.NoticeVO;
import com.project.cinema.AbstractTest;

public class NoticeDAOTest extends AbstractTest{

	@Inject
	private NoticeDAO dao;
	
	@Test
	public void test() throws Exception {
		BoardVO noticeVO = new NoticeVO();
		noticeVO.setTitle("test");
		noticeVO.setWriter("test");
		noticeVO.setContents("test");
		int result =dao.setWrite(noticeVO);
		assertEquals(1, result);
	}

}

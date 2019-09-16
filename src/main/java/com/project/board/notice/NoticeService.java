package com.project.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.project.board.BoardService;
import com.project.board.BoardVO;
import com.project.util.PageMaker;

public class NoticeService implements BoardService {

	@Override
	public int setWrite(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setDelete(int num, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setUpdate(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardVO getSelect(int num) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> getList(PageMaker pageMaker) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

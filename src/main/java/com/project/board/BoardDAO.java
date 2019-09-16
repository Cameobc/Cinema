package com.project.board;

import java.util.List;

import com.project.util.PageMaker;

public interface BoardDAO {

	public int setWrite(BoardVO boardVO) throws Exception;
	public int setDelete(int num) throws Exception;
	public int setUpdate(BoardVO boardVO) throws Exception;
	public BoardVO getSelect(int num) throws Exception;
	public List<BoardVO> getList(PageMaker pageMaker) throws Exception;
	public int getTotalCount (PageMaker pageMaker) throws Exception;
}

package com.project.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.project.util.PageMaker;

public interface BoardService {
	
	//write
	public int setWrite(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception;
	
	//delete
	public int setDelete(int num, HttpSession session) throws Exception;
	
	//update
	public int setUpdate(BoardVO boardVO, List<MultipartFile> files, HttpSession session) throws Exception;
	
	//select
	public BoardVO getSelect(int num) throws Exception;
	
	//list
	public List<BoardVO> getList(PageMaker pageMaker) throws Exception;
}

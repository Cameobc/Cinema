package com.project.cinema.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.board.BoardVO;
import com.project.board.notice.NoticeService;
import com.project.board.notice.NoticeVO;
import com.project.util.PageMaker;

@Controller
@RequestMapping(value = "/notice/")
public class NoticeController {

	@Inject
	NoticeService noticeService;
	
	
	
	@RequestMapping(value = "noticeList")
	public ModelAndView getList(PageMaker pageMaker) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BoardVO> list = noticeService.getList(pageMaker);
		mv.addObject("board", "noticeList");
		mv.addObject("page", pageMaker);
		System.out.println(pageMaker.getStartNum());
		System.out.println(pageMaker.getLastNum());
		mv.addObject("list", list);
		mv.setViewName("board/boardList");
		return mv;
	}
	
	@RequestMapping(value = "noticeWrite", method = RequestMethod.POST)
	public ModelAndView setWrite(NoticeVO noticeVO,	List<MultipartFile> files, 
			HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = noticeService.setWrite(noticeVO, files, session);
		String message = "게시글을 등록하지 못했습니다.";
		
		if(result>0){
			message = "게시글 등록 성공";
		}
		
		mv.addObject("message", message);
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/message");
		return mv;
	}
	
	@RequestMapping(value = "noticeWrite", method = RequestMethod.GET)
	public ModelAndView setWrite() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", "noticeWrite");
		mv.setViewName("board/boardWrite");
		return mv;
	}
}

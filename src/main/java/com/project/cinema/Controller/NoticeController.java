package com.project.cinema.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/notice/")
public class NoticeController {

	@RequestMapping(value = "noticeList")
	public ModelAndView getList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("board", "noticeList");
		mv.setViewName("board/boardList");
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

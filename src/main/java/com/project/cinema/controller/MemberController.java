package com.project.cinema.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.member.MemberVO;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@RequestMapping(value = "memberJoin", method = RequestMethod.POST)
	public ModelAndView memberJoin(@Validated MemberVO memberVO, BindingResult bindingResult, MultipartFile photo, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	@RequestMapping(value = "memberJoin", method = RequestMethod.GET)
	public void memberJoin(@ModelAttribute(name = "MemberVO") MemberVO memberVO)throws Exception{
		
	}
	
	@RequestMapping(value = "memberTerm")
	public void memberTerm()throws Exception{
		
	}
}

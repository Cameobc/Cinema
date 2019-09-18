package com.project.cinema.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.files.FilesService;

@Controller
@RequestMapping(value = "/ajax/")
public class AjaxController {

	@Inject
	private FilesService filesService;
	
	
	@RequestMapping(value = "summerFileDelete", method = RequestMethod.POST)
	@ResponseBody
	public int summerFileDelete(String fileName, HttpSession httpSession) throws Exception{
		int result = filesService.summerFileDelete(fileName, httpSession);
		return result;
	}
	
	@RequestMapping(value = "summerFileUpload", method = RequestMethod.POST)
	@ResponseBody
	public String summerFileUpload(HttpSession httpSession, MultipartFile file) throws Exception{
		//경로+fname을 해 줄 필요가 있음.
		String fname = httpSession.getServletContext().getContextPath();
		// org.apache.catalina.core.ApplicationContextFacade@c70742a
		//System.out.println(httpSession.getServletContext());
		// /cinema
		//System.out.println(httpSession.getServletContext().getContextPath());
		// C:\Users\WBC-NJS\mj\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Cinema\
		//System.out.println(httpSession.getServletContext().getRealPath("/"));
		fname += "/resources/summernote/";
		fname += filesService.summerFileUpload(file, httpSession); 
		return fname;
	}
}

package com.project.files;


import java.io.File;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.project.util.FileSaver;

public class FilesService {

	@Inject
	private FilesDAO filesDAO;
	@Inject
	private FileSaver fileSaver;
	
	
	public int summerFileDelete(String fileName, HttpSession httpSession) throws Exception{
		String realpath = httpSession.getServletContext().getRealPath("/resources/summernote");
		String fname = fileName.substring(fileName.lastIndexOf("/"));
		int result = fileSaver.deleteFile(realpath, fname);
		return result;
	}
	
	public String summerFileUpload(MultipartFile file, HttpSession httpSession) throws Exception{
		String realPath = httpSession.getServletContext().getRealPath("/resources/summernote");
		String fname=fileSaver.saveFile3(realPath, file);
		return fname;
	}
	
	
}

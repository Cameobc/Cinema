package com.project.util;

import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileSaver {

	
	//3.Java : OutPutStream / byteType 필요
	public String saveFile3(String realPath, MultipartFile multipartFile) throws Exception{
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();	
		}
		
		String fname = UUID.randomUUID().toString();
		String oname = multipartFile.getOriginalFilename();
		fname += oname.substring(oname.lastIndexOf("."));
		
		file = new File(realPath, fname);
		FileOutputStream fs = new FileOutputStream(file);
		fs.write(multipartFile.getBytes());
		return fname;
	}
	
	//2.Spring : FileCopyUtils.copy() / byteType 필요
	public String saveFile2(String realPath, MultipartFile multipartFile) throws Exception{
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fname = UUID.randomUUID().toString();
		String oname = multipartFile.getOriginalFilename();
		fname += oname.substring(oname.lastIndexOf("."));
		
		file = new File(realPath, fname);
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		return fname;
	}
	
	
	//1.Spring : MultipartFile.transferTO()
	public String saveFile(String realPath, MultipartFile multipartFile) throws Exception{
		//realPath 에 파일 저장
		File file = new File(realPath);
		
		//파일이 저장 되는 위치가 존재하지 않는 다면 폴더 생성하기
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//fname 만들기. UUID 이용
		String fname = UUID.randomUUID().toString();
		String oname = multipartFile.getOriginalFilename();
		//만들어진 fname에 확장자 붙이기
		fname += oname.substring(oname.lastIndexOf("."));
		//저장
		file = new File(realPath, fname);
		multipartFile.transferTo(file);
		return fname;
	}
}
